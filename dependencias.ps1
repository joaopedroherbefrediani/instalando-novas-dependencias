
Write-Host "Iniciando a instalacao das dependencias"

Write-Host "Configurando ExecutionPolicy e criando HOME ENV"
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ;

Write-Host "Instalando Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Checando se Chocolatey esta instalado"

choco --version

Write-Host "Atualizando Chocolatey"
choco upgrade chocolatey

Write-Host "Instalando Adobe Reader"
choco install adobereader --version 2023.6.20360 -Y

Write-Host "Instalando 7zip"
choco install 7zip.install --version 23.1.0 -Y

Write-Host "Instalando Notepad++"
choco install notepadplusplus --version 8.5.8 -Y

Write-Host "Instalando Microsoft Teams"
choco install microsoft-teams --version 1.6.0.27573 -Y

Write-Host "Instalando Java 8"
choco install jdk8 --version 8.0.211 -Y

Write-Host "Instalando Google Chorme"
choco install googlechrome --version 119.0.6045.106 -Y

Write-Host "Instalando Directx 9"
choco install directx --version 9.29.1974.20210222 -Y

Write-Host "Instalando Lightshot"
choco install lightshot --version 5.5.0.720221014 -Y
