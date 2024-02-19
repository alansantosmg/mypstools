

<# 
    Use the same cmdlets with different Technologies
#>

# Providers
Get-PSProvider

# Drives
Get-PSDrive


# Create new 
New-PSDrive -Name f -PSProvider FileSystem -root C:\users\alan.santos\source\github.com\mypstools
F:

# Remove PS Drive
Remove-PSDrive f

Find-PSResource -type Module -name *license* |select-object name, description