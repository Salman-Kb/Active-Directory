#This script used to rename the workstations remotly
$Name = Read-Host "Enter the laptop name"
$NewNmae = Read-Host "Enter the new laptop name"
Rename-Computer -ComputerName $name -NewName $NewNmae -DomainCredential qwerty.com\salman.kabboul -Force -Restart
