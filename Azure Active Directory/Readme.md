# Usage

This script allows you to add bulk users into an Azure AD group. You will need to obtain the object-id of the target group and add to line 3 in the script :

```
PS C:\>Get-AzureADGroup
```
You will need the following for 
  - CSV file containing UserPrincipalName of the target users. First cell of this column must be "UPN"
  - TargetGroupDisplayName "Display-name-of-group"
   
    

# License
GNU GPL