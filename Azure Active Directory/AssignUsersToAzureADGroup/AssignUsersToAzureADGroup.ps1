#Enter the group id of Azure AD Group to be modified

$groupId=''

$MemberCount=Get-AzAdGroupMember -GroupObjectId $groupId
$CurrentMembers=$MemberCount.count
echo "Currently Number of users in the $GroupName are :" $CurrentMembers
echo "Executinting  script...."

$sourceFile="C:\Path\To\CSV\Files"
Import-csv $sourceFile |foreach {Add-AzADGroupMember -MemberUserPrincipalName $($_.UPN) -TargetGroupDisplayName "Display-name-of-group" }

$NewMemberCount=Get-AzAdGroupMember -GroupObjectId $groupId
$NewCurrentMembers=$NewMemberCount.count
$Diff=$NewCurrentMembers - $CurrentMembers

echo ""
echo ""
echo "*************************Script Execution Completed*************************************"
echo ""
echo ""
Write-Host -NoNewline "More users added to to the group       :" $Diff
echo ""
Write-Host -NoNewLine "New  Number of users in the $GroupName is :" $NewCurrentMembers