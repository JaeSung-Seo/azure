# https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-powershell
$random = get-random -Maximum 1000
$Name = "myVM" + $random 
$myVnet = "myVnet" + $random
$myPublicIpAddress = "PublicIP" + $random  
New-AzVm `
    -ResourceGroupName "myResourceGroup" `
    -Name $Name `
    -Location "East US" `
    -VirtualNetworkName "myVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName $myPublicIpAddress `
    -OpenPorts 80,3389 `
    -Image win2016datacenter

