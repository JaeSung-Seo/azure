$vm = Get-AzVM -ResourceGroupName myResourceGroup -VMName myVM593
$vm.HardwareProfile.VmSize = "Standard_DS2_V2"
Update-AzVM -VM $vm -ResourceGroupName myResourceGroup -Verbose
