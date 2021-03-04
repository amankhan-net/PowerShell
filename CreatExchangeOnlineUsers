Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName <user@yourdomain.onmicrosoft.com>

#Define user location
$location="US"
#Source CSV File path
$sourceFile="<Path to file csv>\FilewithUserDetails.csv"

#Loop through CSV to create multiple users in Exchange online
Import-csv $sourceFile |foreach {New-Mailbox -Alias $($_.Alias) -Name $($_.Name) -FirstName $($_.FirstName) -LastName $($_.LastName) -DisplayName $($_.DisplayName) -MicrosoftOnlineServicesID $($_.UPN) -Password (ConvertTo-SecureString -String 'YourPassword-PleaseMakeaSecureoneandNOT_THIS_ONE' -AsPlainText -Force) -ResetPasswordOnNextLogon $true -UsageLocation $location }
