# This script used to get all the workstations in the domain that have been inactive for 3 months

#Determine the duration
$DaysInactive = 180
#Determine the OU
$TargetOU = "OU=Win10,OU=Computers,DC=qwerty,DC=com"
$time = (Get-Date).Adddays(-($DaysInactive))
Get-ADComputer -Filter {LastLogonTimeStamp -lt $time} -SearchBase $TargetOU -ResultPageSize 2000 -resultSetSize `
$null -Properties Name, OperatingSystem, SamAccountName, DistinguishedName, LastLogonDate | Export-CSV "D:\Inactive_computer\Win.csv" –NoTypeInformation
