#!/bin/bash

# create a parameter to store the subscription name to use to filter the subscription id and the role name to use to create the custom role
subscriptionName=$1
roleName=$2

rolePath=pre-req/security/custom-contributorRole.json

echo $subscriptionName

subscriptionId=$(az account list | jq -r --arg subName "$subscriptionName" 'map(select(.name == $subName)) | .[].id')

echo $subscriptionId

sed -i 's/{subscriptionId}/'$subscriptionId'/g' $rolePath
sed -i 's/{roleName}/'$roleName'/g' $rolePath

cat "$rolePath"

#az role definition create --role-definition "$rolePath"

#az role definition list --custom-role-only true

#az role definition delete --name "$roleName"