az network vnet create `
--resource-group testing1VM_group `
--name jseo-vnet `
--location eastus `
--address-prefix 10.3.0.0/16 `
--subnet-name SubnetA `
--subnet-prefix 10.3.0.0/24 

<#
az network vnet create \
  --name myAzureVNet \
  --resource-group MyAzureResourceGroup \
  --location eastus \
  --address-prefix 10.2.0.0/16 \
  --subnet-name backendSubnet \
  --subnet-prefixes 10.2.0.0/24

az network private-dns zone create -g MyAzureResourceGroup \
   -n private.contoso.com

az network private-dns link vnet create -g MyAzureResourceGroup -n MyDNSLink \
   -z private.contoso.com -v myAzureVNet -e true

#>