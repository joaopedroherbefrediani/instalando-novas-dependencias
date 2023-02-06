## Instalando dependências em máquinas novas

### Chamando Script sem criar arquivo

```powershell
iex (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/joaofrediani/instalando-novas-dependencias/main/dependencias.ps1')
```

### Instalando Script manualmente

1. Salve o arquivo `dependencias.ps1` na Área de Trabalho
2. Abra o Powershell como Administrador (Win + X + A)
3. Execute a linha de comando abaixo para executar o Script no PowerShell

```powershell
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ; .\dependencias.ps1
```
