### https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-use-parameter-file?tabs=azure-cli

 az deployment group create --name exampleDepoly \
 --resource-group  jsRG2 \
 --template-file template.json \
 --parameters parameters.json
