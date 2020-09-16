#Sample script
#https://markheath.net/post/create-configure-vm-azure-cli
az group create --name myResourcegroup  --location eastus
VMname="win$((RANDOM))"
ResourceGroupName=myResourcegroup
echo "creating VM $VMname"
az vm create --resource-group $ResourceGroupName \
--name $VMname \
--image win2016datacenter \
--admin-username azureuser \
--location "eastus" \
--admin-password 'QWEazu!@#QWE' \
--verbose


az vm open-port --port 3389 --resource-group $ResourceGroupName --name $VMname