
Write-Host "Iniciando a instalação das dependências"

Write-Host "Configurando ExecutionPolicy e criando HOME ENV"
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ;

Write-Host "Instalando Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Checando se Chocolatey está instalado"

choco --version

Write-Host "Atualizando Chocolatey"
choco upgrade chocolatey

Write-Host "Instalando Adobe Acrobat Reader DC"
cinst adobereader --version 2023.001.20143 -y

Write-Host "Instalando Google Chrome"
cinst googlechrome --version 113.0.5672.127 -y

Write-Host "Instalando Microsoft Visual C++ 2010"
cinst vcredist140 --version 14.36.32532 -y

Write-Host "Instalando Notepad++"
cinst notepadplusplus.install --version 8.5.3 -y

Write-Host "Instalando Microsoft Visual C++ 2015"
cinst vcredist2015 --version 14.0.24215.20170201 -y

Write-Host "Instalando Dotnet"
cinst dotnetfx --version 4.8.0.20220524 -y

Write-Host "Instalando Git"
cinst git.install --version 2.40.1 -y

Write-Host "Instalando Winrar"
cinst winrar --version 6.21 -y

Write-Host "Instalando NodeJS"
cinst nodejs.install --version 20.2.0 -y

Write-Host "Instalando Teams"
cinst microsoft-teams --version 1.6.00.11166 -y

Write-Host "Instalando VsCode"
cinst vscode --version 1.78.2 -y

Write-Host "Instalando Ccleaner"
cinst ccleaner --version 6.12.10490 -y

Write-Host "Instalando Java"
cinst javaruntime --version 8.0.231 -y
