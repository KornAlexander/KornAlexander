# get group members, including subgroups
Get-ADGroupMember -identity "OG_EU_GMGT" -Recursive | Get-ADUser -Property DisplayName | Select Name,ObjectClass,DisplayName 

# export all group members, including subgroups to csv file
Get-ADGroupMember -identity "OG_EU_GMGT" -Recursive | Get-ADUser -Property DisplayName | Select Name | Out-File C:\Users\92900054\Desktop\Filename.csv 

# get all groups with a similar name. 
Get-ADGroup -Filter {name -like "*OG_*MGT"} -Properties Description,info | Select Name,samaccountname,Description,info | Sort Name

# get all users where password never experience with certain name in principal name
get-aduser -filter 'UserPrincipalName -like "*bi*"' -properties Name, PasswordNeverExpires | where {$_.passwordNeverExpires -eq "true" } | Select-Object DistinguishedName,Name,Enabled

# get ad user with SSOs like
Get-ADUser -Filter 'Name -like "*929*"' | FT Name,SamAccountName,UserPrincipalName -A

# get users with names like
Get-ADUser -Filter 'UserPrincipalName -like "*korn*"' | FT Name,SamAccountName,UserPrincipalName -A
