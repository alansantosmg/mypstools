
#Update Windows Powershell

[Net.ServicePointManager]::SecurityProtocol = "Tls12"
Install-PackageProvider -Name Nuget -Force
Install-Module -name PowershellGet -AllowClobber -Force
remove-module PowershellGet
import-module PowershellGet
get-module


import-module Microsoft.PSResourceGet
Update-Help Microsoft.PowerShell.PSResourceGet -Force
help Get-PSResourceGet
Get-PSResourceGet
get-command Microsoft.PowerShell.PSResourceGetget