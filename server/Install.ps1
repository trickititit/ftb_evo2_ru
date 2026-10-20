[CmdletBinding()]
param(
    [string]$Target,
    [ValidateSet('Install','Rollback','Verify')][string]$Action = 'Install'
)
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$utf8 = New-Object System.Text.UTF8Encoding($false)
function Read-Json([string]$Path) { Get-Content -LiteralPath $Path -Raw -Encoding UTF8 | ConvertFrom-Json }
function Hash([string]$Path) {
    $stream = [IO.File]::OpenRead($Path)
    $algorithm = [Security.Cryptography.SHA256]::Create()
    try { return [BitConverter]::ToString($algorithm.ComputeHash($stream)).Replace('-', '').ToLowerInvariant() }
    finally { $stream.Dispose(); $algorithm.Dispose() }
}
function Save-State($Value) {
    $tmp = Join-Path $stateDir 'state.tmp'
    [IO.File]::WriteAllText($tmp, ($Value | ConvertTo-Json -Depth 12), $utf8)
    Move-Item -LiteralPath $tmp -Destination $stateFile -Force
}
function Safe-Path([string]$Base, [string]$Relative) {
    if ([IO.Path]::IsPathRooted($Relative) -or $Relative -match '(^|[\\/])\.\.([\\/]|$)') { throw "Unsafe relative path: $Relative" }
    $baseFull = [IO.Path]::GetFullPath($Base).TrimEnd([IO.Path]::DirectorySeparatorChar) + [IO.Path]::DirectorySeparatorChar
    $full = [IO.Path]::GetFullPath((Join-Path $Base $Relative))
    if (-not $full.StartsWith($baseFull, [StringComparison]::OrdinalIgnoreCase)) { throw "Path outside target: $Relative" }
    # Refuse links/junctions in the target path, including existing parents.
    $probe = $full
    while ($probe -and $probe.Length -ge $Base.Length) {
        if (Test-Path -LiteralPath $probe) {
            if ((Get-Item -LiteralPath $probe -Force).Attributes -band [IO.FileAttributes]::ReparsePoint) { throw "Link/junction is not supported: $probe" }
        }
        $probe = Split-Path -Path $probe -Parent
    }
    return $full
}
function Put-File([string]$From, [string]$To) {
    $parent = Split-Path $To -Parent
    [IO.Directory]::CreateDirectory($parent) | Out-Null
    $tmp = Join-Path $parent ('.ftbru-' + [Guid]::NewGuid().ToString('N') + '.tmp')
    try {
        Copy-Item -LiteralPath $From -Destination $tmp
        Move-Item -LiteralPath $tmp -Destination $To -Force
    } finally { if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp } }
}
try {
    $manifest = Read-Json (Join-Path $PSScriptRoot 'manifest.json')
    if (-not $Target) {
        Write-Host 'Укажите папку экземпляра Prism, папку minecraft/.minecraft или корень выделенного сервера.'
        $Target = (Read-Host 'Папка сборки').Trim('"')
    }
    if (-not (Test-Path -LiteralPath $Target -PathType Container)) { throw "Папка не найдена: $Target" }
    $root = (Get-Item -LiteralPath $Target).FullName
    if ($manifest.role -eq 'Client') {
        foreach ($child in @('minecraft','.minecraft')) {
            if (Test-Path -LiteralPath (Join-Path $root "$child/config/metadata.json")) { $root = Join-Path $root $child; break }
        }
    }
    $stateDir = Safe-Path $root '.ftb-evolution-ru'
    $stateFile = Join-Path $stateDir 'state.json'
    [IO.Directory]::CreateDirectory($stateDir) | Out-Null
    # Exclusive lock prevents two installers from using the same backup/state.
    $lock = [IO.File]::Open((Join-Path $stateDir 'install.lock'), 'OpenOrCreate', 'ReadWrite', 'None')
    try {
        if ($Action -eq 'Rollback') {
            if (-not (Test-Path -LiteralPath $stateFile)) { Write-Host 'Русификатор не установлен. Откат не требуется.'; return }
            $state = Read-Json $stateFile
            if ($state.id -ne $manifest.id -or $state.role -ne $manifest.role) { throw 'Это состояние другой версии или другой части русификатора.' }
            if ($state.status -eq 'RolledBack') { Write-Host 'Откат уже выполнен.'; return }
            # Validate ALL destinations and backups before restoring any file.
            foreach ($e in $state.files) {
                $dest = Safe-Path $root $e.path
                $current = if (Test-Path -LiteralPath $dest -PathType Leaf) { Hash $dest } else { $null }
                $previous = if ($e.PSObject.Properties['previous']) { $e.previous } else { $null }
                if ($current -ne $e.installed -and $current -ne $e.before -and ($null -eq $previous -or $current -ne $previous)) { throw "Файл изменён после установки: $($e.path). Сохраните свои изменения и восстановите установленную версию перед откатом." }
                if ($e.existed) {
                    $backup = Safe-Path $stateDir $e.backup
                    if (-not (Test-Path -LiteralPath $backup -PathType Leaf) -or (Hash $backup) -ne $e.before) { throw "Резервная копия отсутствует или повреждена: $($e.path)" }
                }
            }
            foreach ($e in $state.files) {
                $dest = Safe-Path $root $e.path
                if ($e.existed) { Put-File (Safe-Path $stateDir $e.backup) $dest }
                elseif (Test-Path -LiteralPath $dest -PathType Leaf) { Remove-Item -LiteralPath $dest }
            }
            $state.status = 'RolledBack'; Save-State $state
            Write-Host 'Откат выполнен. Исходные файлы восстановлены; резервные копии сохранены.'
            return
        }
        $metaPath = Safe-Path $root 'config/metadata.json'
        if (-not (Test-Path -LiteralPath $metaPath)) { throw 'Не найдена config/metadata.json. Выберите папку FTB Evolution 2 с каталогами config и mods.' }
        $meta = Read-Json $metaPath
        if ($meta.name -ne $manifest.pack -or $meta.version.name -ne $manifest.version -or [string]$meta.id -ne '135') {
            throw "Несовместимая сборка: $($meta.name) $($meta.version.name). Требуется FTB Evolution 2 1.4.0, Minecraft 26.1.2, NeoForge 26.1.2.121."
        }
        # Metadata alone is not sufficient: require the exact tested mod and quest inputs.
        foreach ($e in @($manifest.mods) + @($manifest.baseline)) {
            $p = Safe-Path $root $e.path
            if (-not (Test-Path -LiteralPath $p -PathType Leaf) -or (Hash $p) -ne $e.sha256) { throw "Несовместимый или изменённый файл сборки: $($e.path). Установка отменена." }
        }
        $prism = Join-Path (Split-Path $root -Parent) 'mmc-pack.json'
        if ($manifest.role -eq 'Client' -and (Test-Path -LiteralPath $prism)) {
            $components = (Read-Json $prism).components
            if (@($components | Where-Object { $_.uid -eq 'net.minecraft' -and $_.version -eq $manifest.minecraft }).Count -ne 1 -or @($components | Where-Object { $_.uid -eq 'net.neoforged' -and $_.version -eq $manifest.loader }).Count -ne 1) { throw 'Версия Minecraft или NeoForge в Prism не совпадает с 26.1.2 / 26.1.2.121.' }
        }
        if ($manifest.role -eq 'Server') {
            $sm = Safe-Path $root '.manifest.json'
            if (-not (Test-Path -LiteralPath $sm)) { throw 'Для серверной части требуется серверный .manifest.json FTB.' }
            $serverMeta = Read-Json $sm
            if ($serverMeta.versionName -ne $manifest.version -or $serverMeta.modPackTargets.mcVersion -ne $manifest.minecraft -or $serverMeta.modPackTargets.modLoader.version -ne $manifest.loader) { throw 'Версия сервера, Minecraft или NeoForge не совпадает с поддерживаемой.' }
        }
        foreach ($e in $manifest.files) {
            $source = Safe-Path (Join-Path $PSScriptRoot 'payload') $e.path
            if (-not (Test-Path -LiteralPath $source -PathType Leaf) -or (Hash $source) -ne $e.sha256) { throw "Повреждён файл русификатора: $($e.path)" }
            $null = Safe-Path $root $e.path
        }
        if ($Action -eq 'Verify') { Write-Host 'Совместимость и целостность файлов русификатора проверены.'; return }
        $upgrade = $null
        if (Test-Path -LiteralPath $stateFile) {
            $old = Read-Json $stateFile
            if ($old.status -ne 'RolledBack') {
                if ($old.role -ne $manifest.role -or ($old.id -ne $manifest.id -and $old.id -notin @($manifest.upgradeFrom))) { throw 'Сначала выполните откат ранее установленной версии русификатора.' }
                if ($old.status -ne 'Installed') { throw 'Предыдущая установка прервана. Сначала выполните Rollback.cmd.' }
                foreach ($e in $old.files) {
                    $p = Safe-Path $root $e.path
                    if (-not (Test-Path -LiteralPath $p -PathType Leaf) -or (Hash $p) -ne $e.installed) { throw "Установленный файл изменён: $($e.path). Повторная установка не будет его затирать." }
                }
                if ($old.id -eq $manifest.id) { Write-Host 'Эта версия уже установлена, все файлы на месте. Резервные копии сохранены.'; return }
                foreach ($e in $old.files) {
                    if ($e.path -notin @($manifest.files.path)) { throw "Обновление не может удалить прежний файл $($e.path). Сначала выполните откат предыдущего выпуска." }
                }
                $upgrade = $old
            }
        }
        $generation = 'backup-' + [Guid]::NewGuid().ToString('N')
        $entries = @()
        foreach ($e in $manifest.files) {
            $dest = Safe-Path $root $e.path
            $prior = @(if ($upgrade) { $upgrade.files | Where-Object { $_.path -eq $e.path } })
            if ($prior.Count -eq 1) {
                $p = $prior[0]
                if ($p.existed) {
                    $saved = Safe-Path $stateDir $p.backup
                    if (-not (Test-Path -LiteralPath $saved -PathType Leaf) -or (Hash $saved) -ne $p.before) { throw "Повреждена исходная резервная копия: $($e.path)" }
                }
                $entries += [pscustomobject]@{ path=$e.path; existed=$p.existed; before=$p.before; installed=$e.sha256; backup=$p.backup; previous=$p.installed }
                continue
            }
            if ((Test-Path -LiteralPath $dest) -and -not (Test-Path -LiteralPath $dest -PathType Leaf)) { throw "На месте файла находится каталог: $($e.path)" }
            $existed = Test-Path -LiteralPath $dest -PathType Leaf
            $before = if ($existed) { Hash $dest } else { $null }
            $backupRel = $generation + '/' + $e.path
            if ($existed) {
                $backup = Safe-Path $stateDir $backupRel
                Put-File $dest $backup
                if ((Hash $backup) -ne $before) { throw "Не удалось проверить резервную копию: $($e.path)" }
            }
            $entries += [pscustomobject]@{ path=$e.path; existed=$existed; before=$before; installed=$e.sha256; backup=$backupRel; previous=$null }
        }
        $state = [pscustomobject]@{ id=$manifest.id; role=$manifest.role; status='Installing'; files=$entries }
        Save-State $state
        # State is durable BEFORE first mutation, so interrupted installs can be rolled back.
        foreach ($e in $manifest.files) {
            $dest = Safe-Path $root $e.path
            Put-File (Safe-Path (Join-Path $PSScriptRoot 'payload') $e.path) $dest
            if ((Hash $dest) -ne $e.sha256) { throw "Ошибка проверки записанного файла: $($e.path). Выполните откат." }
        }
        $state.status = 'Installed'; Save-State $state
        Write-Host "Установлена часть $($manifest.role). Резервные копии: $stateDir"
        if ($manifest.role -eq 'Client') { Write-Host 'В игре выберите Русский язык и включите FTB-Evolution-2-Russian-1.4.0.zip выше других ресурс-паков.' }
        else { Write-Host 'Запустите сервер заново, чтобы загрузить языковые файлы заданий. Друзьям также нужна клиентская часть.' }
    } finally { $lock.Dispose() }
} catch {
    Write-Host ('ОШИБКА: ' + $_.Exception.Message) -ForegroundColor Red
    exit 1
}
