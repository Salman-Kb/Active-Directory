#Get the groups for one AD account (We can export the result or not)
Get-ADPrincipalGroupMembership username | Select-Object name, GroupCategory, GroupScope | Export-CSV `
"C:\Users\username\Desktop\Powershell\powershell-1.csv" –NoTypeInformation


#Get the groups for multiple AD accounts imported from a file, export to a csv file (separated file for each user)
$user = Get-Content "C:\Users\username\Desktop\Powershell\List.txt"
Foreach ($user in $user){
    Get-ADPrincipalGroupMembership $user | Select-Object name, GroupCategory, GroupScope | Export-CSV `
     "C:\Users\username\Desktop\Powershell\$user.csv" –NoTypeInformation
}
