## powershell_prompt
Una pequeña personalizacion de powershell parecida a zsh y neofetch

### Pre-requisitos 📋
1. Tener instalado alguna tipografia que soperte los caracteres especiales como [Ubuntu Mono Nerd Font Complete Mono](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf)

2. Habilitar la ejecucion de scripts en powershell, para ello ejecuta el siguiente comando como administrador.
```
Set-ExecutionPolicy Unrestricted
```

### Instalación 🔧

Mover el archivo a ``$HOME\Documents\WindowsPowerShell``

En caso de que las tipografias no se apliquen correctamente intenta cambiar la codificacion de archivo de UTF-8 a UTF-16 con el siguiente comando.

```powerShell
GetCurrent Microsoft.PowerShell_profile.ps1 | Set-Content -Encoding BigEndianUnicode Microsoft.PowerShell_profile.ps1
```
