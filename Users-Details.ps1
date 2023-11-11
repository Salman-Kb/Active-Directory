#Get information about one AD account (We can export the result or not)
get-aduser username -Properties * | Select-Object GivenName, Surname, SamAccountName, DisplayName, `
Title, EmployeeID, Manager, Department, company, co, country, City, EmailAddress, ipPhone, OfficePhone, MobilePhone, `
Enable, LastLogonDate, LockedOut, passwordlastset, LockOutTime, AccountExpirationDate, PasswordExpired, LastBadPasswordAttempt, info `
| Export-CSV "D:\Scripts\powershell.csv" –NoTypeInformation



#Get information about multible users accounts imported from a file, export to a csv file (separated file for each user)
 $user = Get-Content "D:\Scripts\List.txt"
Foreach ($user in $user){
            get-aduser $user -Properties * | Select-Object GivenName, Surname, SamAccountName, DisplayName, `
            Title, EmployeeID, Manager, Department, company, co, country, City, EmailAddress, ipPhone, OfficePhone, MobilePhone, `
            Enable, LastLogonDate, LockedOut, passwordlastset, LockOutTime, AccountExpirationDate, PasswordExpired, LastBadPasswordAttempt, info `
            | Export-CSV D:\Scripts\$user.csv" –NoTypeInformation
   }
  



#Get information about multible users accounts imported from a file, export to a csv file (same file multiple lines)
 $user = Get-Content "D:\Scripts\List.txt"
Foreach ($user in $user){
            get-aduser $user -Properties * | Select-Object GivenName, Surname, SamAccountName, DisplayName, `
            Title, EmployeeID, Manager, Department, company, co, country, City, EmailAddress, ipPhone, OfficePhone, MobilePhone, `
            Enable, LastLogonDate, LockedOut, passwordlastset, LockOutTime, AccountExpirationDate, PasswordExpired, LastBadPasswordAttempt, info `
            | Export-CSV "D:\Scripts\powershell.csv" –NoTypeInformation -Append
   }
