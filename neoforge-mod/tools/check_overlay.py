"""Run OverlayChecks against a locally installed pack; never distribute its mod binaries."""
from pathlib import Path
import argparse, json, os, shutil, subprocess, zipfile, re

parser = argparse.ArgumentParser()
parser.add_argument('--pack-dir', type=Path, required=True, help='Game/server folder containing mods and config')
parser.add_argument('--libraries-dir', type=Path, help='Minecraft/NeoForge libraries, default: pack-dir/libraries')
parser.add_argument('--java-home', type=Path, help='JDK 25; default: JAVA_HOME or executables on PATH')
args = parser.parse_args()
project = Path(__file__).resolve().parents[1]
pack = args.pack_dir.resolve()
libraries = (args.libraries_dir or pack / 'libraries').resolve()
if not (pack / 'mods').is_dir() or not libraries.is_dir():
    parser.error('Select the game/server directory and a directory containing Minecraft/NeoForge library JARs')
work = project / 'build' / 'overlay-checks'
work.mkdir(parents=True, exist_ok=True)
java_home = args.java_home or (Path(os.environ['JAVA_HOME']) if 'JAVA_HOME' in os.environ else None)
suffix = '.exe' if os.name == 'nt' else ''
def executable(name):
    if java_home:
        return str(java_home / 'bin' / (name + suffix))
    resolved = shutil.which(name)
    if not resolved:
        parser.error('JDK 25 executable not found: ' + name)
    return resolved
jar = next(p for p in (project / 'build/libs').glob('*.jar') if not p.name.endswith('-sources.jar'))
ftb_library = pack / 'mods/ftb-library-neoforge-26.1.2.9.jar'
with zipfile.ZipFile(ftb_library) as z:
    (work / 'json5-java.jar').write_bytes(z.read('META-INF/jarjar/json5-java-3.0.0.jar'))
classes = work / 'classes'
classes.mkdir(exist_ok=True)
paths = [classes, jar, work / 'json5-java.jar', *sorted(libraries.rglob('*.jar')), *sorted((pack / 'mods').glob('*.jar'))]
classpath = os.pathsep.join(p.resolve().as_posix() for p in paths)
def quoted(value):
    return '"' + str(value).replace('\\', '/').replace('"', '\\"') + '"'
compile_args = '-encoding UTF-8 -proc:none -classpath ' + quoted(classpath) + ' -d ' + quoted(classes) + ' ' + quoted(project / 'tools/OverlayChecks.java')
(work / 'compile.args').write_text(compile_args, encoding='utf-8')
subprocess.run([executable('javac'), '@' + str(work / 'compile.args')], check=True)
english = {}
for file in sorted((pack / 'config/ftbquests/quests/lang/en_us').rglob('*.json5')):
    # Preserve quoted values while removing JSON5 comments and trailing commas.
    token = r'"(?:\\.|[^"\\])*"|//[^\n]*|/\*[\s\S]*?\*/|,\s*(?=[}\]])'
    text = re.sub(token, lambda m: m[0] if m[0].startswith('"') else '', file.read_text(encoding='utf-8-sig'))
    english.update(json.loads(text))
(work / 'english.json').write_text(json.dumps(english, ensure_ascii=False), encoding='utf-8')
run_args = '-classpath ' + quoted(classpath) + ' OverlayChecks ' + quoted(work / 'english.json') + ' ' + quoted(project / 'src/main/resources/ftbevo2ru/quests.json')
(work / 'run.args').write_text(run_args, encoding='utf-8')
subprocess.run([executable('java'), '@' + str(work / 'run.args')], check=True)
