
Write-Host "Iniciando a instalação das dependências"

Write-Host "Configurando ExecutionPolicy e criando HOME ENV"
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ;

Write-Host "Instalando Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Checando se Chocolatey está instalado"

choco --version

Write-Host "Atualizando Chocolatey"
choco upgrade chocolatey

Write-Host "Instalando Java SE 8"
choco install jre8 --version 8.0.371 -y

Write-Host "Instalando Directx 9"
choco install directx --version 9.29.1974.20210222 -y

Write-Host "Instalando Visual C++ Redistributable"
choco install vcredist140 --version 14.36.32532 -y

Write-Host "Instalando Adobe Reader DC"
choco install adobereader --version 2023.3.20201.1 -y

Write-Host "Instalando Notepad++"
choco install notepadplusplus.install --version 8.5.4 -y

Write-Host "Instalando Winrar"
choco install winrar --version 6.22 -y

Write-Host "Instalando CCleaner"
choco install ccleaner --version 6.13.10517 -y

Write-Host "Instalando AnyDesk"
choco install anydesk.install --version 7.1.12 -y

Write-Host "Instalando Lightshot"
choco install lightshot --version 5.5.0.720221014 -y

Write-Host "Instalando Microsoft Teams"
choco install microsoft-teams --version 1.6.0.16472 -y

Write-Host "Instalando Google Chrome"
choco install googlechrome --version 114.0.5735.199 -y
