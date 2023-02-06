
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
cinst adobereader --version 2022.003.20314 -y

Write-Host "Instalando Google Chrome"
cinst googlechrome --version 109.0.5414.120 -y

Write-Host "Instalando Microsoft Visual C++ Redistributable for Visual Studio 2015-2022"
cinst vcredist140 --version 14.34.31931 -y

Write-Host "Instalando Notepad++"
cinst notepadplusplus.install --version 8.4.9 -y

Write-Host "Instalando Microsoft .NET Framework 4.8"
cinst dotnetfx --version 4.8.0.20220524 -y

Write-Host "Instalando Git"
cinst git.install --version 2.39.1 -y

Write-Host "Instalando WinRAR"
cinst winrar --version 6.20 -y

Write-Host "Instalando Node JS"
cinst nodejs.install --version 19.6.0 -y

Write-Host "Instalando CCleaner"
cinst ccleaner --version 6.08.10255 -y

Write-Host "Instalando Visual Studio Code"
cinst vscode --version 1.75.0 -y

Write-Host "Instalando AnyDesk MSI"
cinst anydesk.install --version 7.1.8 -y

Write-Host "Instalando Java SE 8"
cinst jdk8 --version 8.0.211 -y

Write-Host "Instalando DirectX"
cinst directx --version 9.29.1974.20210222 -y

Write-Host "Instalando Microsoft Teams"
cinst microsoft-teams --version 1.6.00.376 -y

Write-Host "Instalando Discord"
cinst discord --version 1.0.9005 -y


