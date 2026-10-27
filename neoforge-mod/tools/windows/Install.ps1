[CmdletBinding()]
param([string]$Target, [ValidateSet('Install','Verify','Rollback')][string]$Action='Install')
$ErrorActionPreference='Stop'
Set-StrictMode -Version Latest
$utf8=New-Object System.Text.UTF8Encoding($false)
function Read-Json([string]$Path) { Get-Content -LiteralPath $Path -Raw -Encoding UTF8 | ConvertFrom-Json }
function Hash([string]$Path) {
    $stream=[IO.File]::OpenRead($Path)
    $algorithm=[Security.Cryptography.SHA256]::Create()
    try { return [BitConverter]::ToString($algorithm.ComputeHash($stream)).Replace('-','').ToLowerInvariant() }
    finally { $stream.Dispose(); $algorithm.Dispose() }
}
function Safe([string]$Base,[string]$Rel) {
    if ([IO.Path]::IsPathRooted($Rel) -or $Rel -match '(^|[\\/])\.\.([\\/]|$)' -or $Rel.Contains(':')) { throw "Недопустимый путь: $Rel" }
    $b=[IO.Path]::GetFullPath($Base).TrimEnd('\','/')
    $p=[IO.Path]::GetFullPath((Join-Path $b $Rel))
    if (-not $p.StartsWith($b+[IO.Path]::DirectorySeparatorChar,[StringComparison]::OrdinalIgnoreCase)) { throw "Путь вне папки сборки: $Rel" }
    $probe=$p
    while ($probe -and $probe.Length -ge $b.Length) {
        if (Test-Path -LiteralPath $probe) {
            if ((Get-Item -LiteralPath $probe -Force).Attributes -band [IO.FileAttributes]::ReparsePoint) { throw "Ссылки и junction не поддерживаются: $probe" }
        }
        $probe=Split-Path -Path $probe -Parent
    }
    return $p
}
function Put([string]$From,[string]$To) {
    [IO.Directory]::CreateDirectory((Split-Path $To -Parent)) | Out-Null
    $temp=$To+'.ftbru-'+[Guid]::NewGuid().ToString('N')+'.tmp'
    try { Copy-Item -LiteralPath $From -Destination $temp; Move-Item -LiteralPath $temp -Destination $To -Force }
    finally { if (Test-Path -LiteralPath $temp) { Remove-Item -LiteralPath $temp } }
}
function Save($Value) {
    $temp=Join-Path $stateDir 'state.tmp'
    [IO.File]::WriteAllText($temp,($Value | ConvertTo-Json -Depth 15),$utf8)
    Move-Item -LiteralPath $temp -Destination $statePath -Force
}
function Current([string]$Path) { if (Test-Path -LiteralPath $Path -PathType Leaf) { return Hash $Path }; return $null }
try {
    $manifest=Read-Json (Join-Path $PSScriptRoot 'manifest.json')
    if (-not $Target) { $Target=(Read-Host 'Папка экземпляра Prism, minecraft/.minecraft или выделенного сервера').Trim('"') }
    $root=(Get-Item -LiteralPath $Target -Force).FullName
    foreach ($child in @('minecraft','.minecraft')) {
        if (Test-Path -LiteralPath (Join-Path $root "$child/config/metadata.json")) { $root=Join-Path $root $child; break }
    }
    $stateDir=Safe $root '.ftb-evolution-ru-mod'
    $statePath=Safe $stateDir 'state.json'
    [IO.Directory]::CreateDirectory($stateDir) | Out-Null
    $lock=[IO.File]::Open((Join-Path $stateDir 'install.lock'),'OpenOrCreate','ReadWrite','None')
    try {
        if ($Action -eq 'Rollback') {
            if (-not (Test-Path -LiteralPath $statePath)) { Write-Host 'Установки через этот скрипт нет; откат не требуется.'; return }
            $state=Read-Json $statePath
            if ($state.id -ne $manifest.id) { throw 'Состояние относится к другому выпуску. Используйте комплект, которым выполнена установка.' }
            if ($state.status -eq 'RolledBack') { Write-Host 'Откат уже выполнен.'; return }
            foreach ($entry in $state.files) {
                $dest=Safe $root $entry.path; $now=Current $dest
                if ($now -ne $entry.after -and $now -ne $entry.before) { throw "Файл изменён после установки: $($entry.path). Откат остановлен для сохранения ваших изменений." }
                if ($null -ne $entry.before) {
                    $backup=Safe $stateDir $entry.backup
                    if ((Current $backup) -ne $entry.before) { throw "Повреждена резервная копия: $($entry.path)" }
                }
            }
            foreach ($entry in $state.files) {
                $dest=Safe $root $entry.path
                if ($null -ne $entry.before) { Put (Safe $stateDir $entry.backup) $dest }
                elseif (Test-Path -LiteralPath $dest -PathType Leaf) { Remove-Item -LiteralPath $dest }
            }
            $state.status='RolledBack'; Save $state
            Write-Host 'Откат выполнен. Состояние до установки восстановлено, резервные копии сохранены.'
            return
        }
        $meta=Read-Json (Safe $root 'config/metadata.json')
        if ($meta.name -ne 'FTB Evolution 2' -or $meta.id -ne 135 -or $meta.version.name -ne $manifest.packVersion) {
            throw "Несовместимая сборка: $($meta.name) $($meta.version.name). Требуется FTB Evolution 2 $($manifest.packVersion), Minecraft 26.1.2 / NeoForge 26.1.2.121. Сначала обновите саму сборку." }
        foreach ($file in $manifest.requiredMods) {
            if ((Current (Safe $root $file.path)) -ne $file.sha256) { throw "Несовместимый файл мода: $($file.path)" }
        }
        $prism=Join-Path (Split-Path $root -Parent) 'mmc-pack.json'
        if (Test-Path -LiteralPath $prism) {
            $components=(Read-Json $prism).components
            if (@($components | Where-Object { $_.uid -eq 'net.minecraft' -and $_.version -eq '26.1.2' }).Count -ne 1 -or @($components | Where-Object { $_.uid -eq 'net.neoforged' -and $_.version -eq '26.1.2.121' }).Count -ne 1) { throw 'Неподдерживаемая версия Minecraft/NeoForge в Prism.' }
        }
        $source=Safe $PSScriptRoot $manifest.payload
        if ((Current $source) -ne $manifest.sha256) { throw 'JAR русификатора повреждён. Скачайте архив заново.' }
        if (Test-Path -LiteralPath $statePath) {
            $state=Read-Json $statePath
            if ($state.status -ne 'RolledBack') {
                if ($state.id -ne $manifest.id -or $state.status -ne 'Installed') { throw 'Сначала выполните откат предыдущей или прерванной установки.' }
                foreach ($entry in $state.files) {
                    if ((Current (Safe $root $entry.path)) -ne $entry.after) { throw "Установленный файл изменён: $($entry.path)" }
                }
                Write-Host 'Русификатор уже установлен. Целостность проверена; исходные резервные копии сохранены.'
                return
            }
        }
        $changes=@{}
        # Replace earlier versions of this add-on; every removed JAR is backed up.
        foreach ($jar in Get-ChildItem -LiteralPath (Safe $root 'mods') -Filter 'ftb-evolution-2-russian-*.jar' -File) {
            $rel='mods/'+$jar.Name; $changes[$rel]=$null
        }
        # Migrate only files tracked by the earlier official localization installer.
        $legacy=Safe $root '.ftb-evolution-ru/state.json'
        $tracked=@{}
        if (Test-Path -LiteralPath $legacy) {
            $old=Read-Json $legacy
            if ($old.status -eq 'Installed') {
                if ($old.id -notmatch '^FTB-Evolution-2-RU-1\.4\.0-r[1-4]$') { throw 'Неизвестная старая установка перевода. Сначала используйте её скрипт отката.' }
                foreach ($entry in $old.files) {
                    if ($entry.path -notmatch '^(config/ftbquests/quests/lang/ru_ru/[^:]+\.json5|kubejs/data/stellaris/wiki/infos/[^:]+\.md|resourcepacks/FTB-Evolution-2-Russian-1\.4\.0\.zip)$') { throw 'Недопустимый путь в состоянии старого перевода.' }
                    if ((Current (Safe $root $entry.path)) -ne $entry.installed) { throw "Старый перевод изменён вручную: $($entry.path). Автоматический перенос отменён." }
                    $changes[$entry.path]=$null; $tracked[$entry.path]=$true
                }
            }
        }
        foreach ($folder in @('config/ftbquests/quests/lang/ru_ru','kubejs/data/stellaris/wiki/infos')) {
            $dir=Safe $root $folder
            if (Test-Path -LiteralPath $dir) {
                foreach ($file in Get-ChildItem -LiteralPath $dir -Recurse -File) {
                    $rel=$file.FullName.Substring($root.TrimEnd('\','/').Length+1).Replace('\','/')
                    if (-not $tracked.ContainsKey($rel)) { throw "Обнаружен отдельный перевод, который может перекрывать новый: $rel. Сохраните его и уберите вручную либо выполните его штатный откат." }
                }
            }
        }
        $changes[$manifest.destination]=$manifest.sha256
        foreach ($rel in $changes.Keys) { $null=Safe $root $rel }
        if ($Action -eq 'Verify') { Write-Host 'Сборка совместима, JAR цел, перенос старого перевода возможен.'; return }
        $generation='backup-'+[Guid]::NewGuid().ToString('N'); $entries=@(); $index=0
        foreach ($rel in @($changes.Keys | Sort-Object)) {
            $dest=Safe $root $rel; $before=Current $dest; $backup="$generation/$index.bin"; $index++
            if ($null -ne $before) {
                # Fail before modifications when a translation file is in use.
                $probe=[IO.File]::Open($dest,'Open','ReadWrite','None'); $probe.Dispose()
                Put $dest (Safe $stateDir $backup)
                if ((Current (Safe $stateDir $backup)) -ne $before) { throw "Ошибка резервного копирования: $rel" }
            }
            $entries += [pscustomobject]@{path=$rel;before=$before;after=$changes[$rel];backup=$backup}
        }
        $state=[pscustomobject]@{id=$manifest.id;status='Installing';files=$entries}; Save $state
        foreach ($entry in $entries) {
            $dest=Safe $root $entry.path
            if ($null -eq $entry.after) { if (Test-Path -LiteralPath $dest -PathType Leaf) { Remove-Item -LiteralPath $dest } }
            else { Put $source $dest }
            if ((Current $dest) -ne $entry.after) { throw 'Установка прервана. Выполните Rollback.cmd.' }
        }
        $state.status='Installed'; Save $state
        Write-Host 'Русификатор установлен. Запустите игру с русским языком; ресурсы включатся автоматически.'
        Write-Host "Резервные копии: $stateDir. Откат: Rollback.cmd из этого комплекта."
    } finally { $lock.Dispose() }
} catch { Write-Host ('ОШИБКА: '+$_.Exception.Message) -ForegroundColor Red; exit 1 }
