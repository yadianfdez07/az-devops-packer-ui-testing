Write-Output "Create a new service principal for Packer";
# $sp = az ad sp create-for-rbac --name "PackerServicePrincipal" --role Contributor --scopes /subscriptions/$subscriptionId

Write-Output "Variable Value: $Env:AZSUBSCRIPTIONID";
Write-Output "Secret Variable Value: $Env:AZSUBSCRIPTIONID";
Get-ChildItem Env: | Format-Table -AutoSize
