
Write-Host "Iniciando a instalação das dependências"

Write-Host "Configurando ExecutionPolicy e criando HOME ENV"
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ;

Write-Host "Instalando Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Checando se Chocolatey está instalado"

choco --version

Write-Host "Atualizando Chocolatey"
choco upgrade chocolatey

Write-Host "Instalando Google Chrome"
cinst googlechrome --version=103.0.5060.114 -Y

Write-Host "Instalando Java (JDK)"
cinst jdk8 --version=8.0.231 -Y

Write-Host "Instalando Winrar"
cinst winrar --version=6.11.0.20220504 -Y

Write-Host "Instalando Git"
cinst git -Y

Write-Host "Instalando AnyDesk Exe"
cinst anydesk.install --version=7.0.10 -Y

Write-Host "Instalando CCleaner"
cinst ccleaner --version=5.91.9537 -Y

Write-Host "Instalando Adobe Acrobat Reader DC"
cinst adobereader --version=2022.001.20085 -Y

