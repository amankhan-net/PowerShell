
#Simple loop for bulk removal of MSOL licenses

Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName youruser@yourdomain.onmicrosoft.com
Connect-MsolService
#Store file location
$sourceFile="Filepath\file.csv"
#store license sku

$ExLic="yourcompany:DEVELOPERPACK_E5"

Import-csv $sourceFile| foreach {Set-MsolUserLicense -UserPrincipalName $($_.UPN) -RemoveLicenses $ExLic -Verbose}
