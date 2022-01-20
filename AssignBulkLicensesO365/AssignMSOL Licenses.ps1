Connect-MsolService -UserPrincipalName user@yourdomainname.onmicrosoft.com

#store license SKU in a variable

$ExLic="yourcompany:DEVELOPERPACK_E5"


#Source file with username in column called 'UPN'
$sourceFile="FilePath\UserList_20-30.csv"
#Assign License - Looping throught the list and assigning licenses to each user.

Import-csv $sourceFile | foreach {Set-MsolUserLicense -UserPrincipalName $($_.UPN) -AddLicenses $ExLic -UsageLocation US }
