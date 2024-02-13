
# Check .net version
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -Recurse |
Get-ItemProperty -Name version -EA 0 | 
Where-Object { $_.PSChildName -Match '^(?!S)\p{L}'} |
Select-Object PSChildName, version