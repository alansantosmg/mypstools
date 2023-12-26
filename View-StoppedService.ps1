
# Title View-StoppedService
# Author: Alan Santos
# Last modified: 2023/12/25
# Description: List a computer stopped services

# Set target host
$Computer = Read-host "Enter the hostname"

# Get services information
$StoppedService =  Get-Service -ComputerName $Computer |
where-object { 
    ($_.StartType -eq "Automatic") -and ($_.status -notlike "*Running*") } |
select-object `
Name,
StartType,
Status,
MachineName,
DisplayName

# Write result to screen
Write-Output $StoppedService | 
Format-Table -AutoSize
