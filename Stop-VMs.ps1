Get-AzureRmVM -ResourceGroupName RG-VNETS | 
    ForEach-Object { 
        Get-AzureRmVM -ResourceGroupName RG-VNETS -Name $_.Name -Status 
    } | 
    ForEach-Object { 
        if (-Not ($_.Statuses[1].DisplayStatus -like "*deallocated*")) { 
            Stop-AzureRmVM -ResourceGroupName RG-VNETS -Name $_.Name -Force 
        } 
    }