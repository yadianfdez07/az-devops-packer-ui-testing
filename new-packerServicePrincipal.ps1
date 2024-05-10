Write-Output "Create a new service principal for Packer";
# $sp = az ad sp create-for-rbac --name "PackerServicePrincipal" --role Contributor --scopes /subscriptions/$subscriptionId

Write-Output "Variable Value: $env:azSubscriptionId";