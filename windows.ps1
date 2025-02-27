Write-Output("@AsenaUserBot Windows Auto-Deploy Aracı")
Write-Output("Scoop Yükleniyor...")
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
Write-Output("Python & Git Yükleniyor...")
scoop install git python@3.8

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Write-Output("Installer Yükleniyor...")

git clone https://github.com/vusalold/OldUserBot_Installer
Set-Location installer
python3.8 -m pip install -r requirements.txt
python3.8 -m OldUserBot_Installer
