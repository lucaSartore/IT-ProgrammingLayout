# this is the installer for windows
# the script should be ran with administrative privileges
# this script has choco and git as a dependency

mkdir tmp
cd tmp


mkdir "C:\\Program Files (x86)\\Kanata"
curl -o "C:\\Program Files (x86)\\Kanata\\kanata.exe" "https://github.com/jtroo/kanata/releases/download/v1.6.1/kanata.exe"

choco install autohotkey.portable --version=2.0.18   

git clone "https://github.com/jtroo/kanata.git"
cd kanata
git checkout 26fa76b60f0295f17483d4c6ba777edcee26e091
cd EnableUIAccess

AutoHotKey EnableUIAccess_launch.ahk "C:\\Program Files (x86)\\Kanata\\kanata.exe" "C:\\Program Files (x86)\\Kanata\\kanata_signed.exe"

cd ../../..
copy ".\\run.bat" "C:\\Program Files (x86)\\Kanata\\run.bat"
copy ".\\kanata.kbd" "C:\\Program Files (x86)\\Kanata\\kanata.kbd"

New-Item -ItemType SymbolicLink -Path $Env:APPDATA"\\Microsoft\\Windows\\Start Menu\\Programs\\Startup" -Name "kanata.lnk" -Value "C:\\Program Files (x86)\\Kanata\\run.bat"

