$groups = Get-AzResourceGroup
foreach ( $group in $groups)
{
###    find-azresource -resourcegroupnameequals 
    $group.ResourceGroupName | 
    ForEach-Object {Set-AzResource -ResourceId $_.ResourceId -Tag $group.Tags -force} 
}