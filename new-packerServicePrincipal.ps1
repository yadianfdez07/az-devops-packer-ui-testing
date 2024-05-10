Write-Output "Create a new service principal for Packer";

#$sp = New-AzADServicePrincipal -DisplayName "PackerPrincipal" -role Contributor -scope "/subscriptions/$Env:AZSUBSCRIPTIONID"

$sp = az ad sp create-for-rbac --name "PackerServicePrincipal" --role Contributor --scopes "/subscriptions/$Env:AZSUBSCRIPTIONID"

$plainPassword = (New-AzADSpCredential -ObjectId $sp.Id).SecretText

Write-Output "Variable Value: $Env:AZSUBSCRIPTIONID";
Get-ChildItem Env: | Format-Table -AutoSize

$subName = "Personal-PAYG"
$sub = Get-AzSubscription -SubscriptionName $subName

Write-Output "Subscription Name: $sub";