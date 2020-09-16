az group create --name myResourcegroup  --location eastus
name="ubuntu$((RANDOM))"
echo "creating VM $name"
az vm create --resource-group myResourcegroup \
--name $name \
--image UbuntuLTS \
--admin-username azureuser \
--location "eastus" \
--admin-password 'QWEazu!@#QWE' \
--verbose
