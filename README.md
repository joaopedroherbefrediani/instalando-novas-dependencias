## Instalando dependências em máquinas novas

### Chamando Script sem criar arquivo

```powershell
iex (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Joao13Neves/Automatiza-o-Install/main/install.ps1')
```

### Permitindo execução de Scripts

1. Salvar arquivo com nome `Script.ps1` na Área de Trabalho
2. Abrir Powershell como Administrador (Win + X, A)
3. Executar a linha de comando abaixo para executar o Script no PowerShell
```powershell
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ; .\Script.ps1
```
