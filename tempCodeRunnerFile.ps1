
# Title View-StoppedService
# Author: Alan Santos
# Last modified: 2023/12/25
# Description: List a computer stopped services

#set target host
$Computer = Read-host "Enter the hostname: "

# get service
$StoppedService =  Get-Service -ComputerName $Computer |
# select service by startype AND status
where-object { ($_.StartType -eq "Automatic") -and ($_.status -notlike "*Running*")} |
# set service reported properties
select-object Name,StartType,status,MachineName,DisplayName 

# write and format output
Write-Output $StoppedService | 
Format-Table -AutoSize