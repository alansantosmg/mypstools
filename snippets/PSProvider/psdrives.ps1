

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


# Variable provider

# Creating var
new-item -path variable: -Name var -Value 10
$var = 100
set-item -pathc variable:\var -Value 200 -PassThru
# view var
Get-item 
Get-variable var |Select-Object name, description
# update var
Set-Variable -name var -Description "This is my var"
# remove var
Remove-Variable var



# alias provider

# view alias
get-alias -name dir | select-object *
get-item Alias:\dir |select-object *
# create alias
new-item -path alias: -Name np -value notepad.exe
set-item -path alias:gd -value get-date -PassThru
new-alias -name np2 -value notepad.exe -description "run notepad" -force -PassThru
# modify alias
set-alias -name np -value notepad.exe -description "run notepad again" -option readonly -force -PassThru | select-object *



# Cert provider
# use tabs to navigate
cd .\\LocalMachine\
dir .\AuthRoot\
Get-ChildItem .\AuthRoot |Select-Object -first 1 -Property * |more
Get-ChildItem .\AuthRoot |Select-Object FriendlyName, Not*,Issuer | Out-gridview 
# install ps script module and run below
get-commandsyntax -name Get-ChildItem -providername certificate 

# view expiringinDays 365
cd .\\LocalMachine\
dir -recurse -ExpiringInDays 365

dir -recurse -DocumentEncryptionCert

dir -recurse -SSLServerAuthentication |
Select-Object @{name="Path";Expression ={Convert-path $_.PsParentPah}}, FriendlyName,Subject

Get-Command -noum certificate
help_about certificate_provider


# Provider registry







