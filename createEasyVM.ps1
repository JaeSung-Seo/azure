$random = Get-Random -Maximum 1000
$vmName = 'myVM' + $random
New-AzVM -ResourceGroupName myResourceGroup -Name $vmName -Location  'Eastus' -Image win2016datacenter