#This script used to move a group of computers from OU to another OU

#import the computers name from a txt file
$computers = Get-Content "D:\Scripts\List.txt"
#Determine the target OU
$TargetOU = "OU=Computer,OU=Client,DC=qwerty,DC=com"
#Move the workwtations
 ForEach($computer in $computers){
    Get-ADComputer $computer | Move-ADObject -TargetPath $TargetOU
    }
