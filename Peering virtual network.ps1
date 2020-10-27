
#login to Azure account using below command

Login-AzAccount -SubscriptionName "Example(Peering01-Rg01 subcription name)" -Tenant "your tenant ID"

Select-AzSubscription -SubscriptionName "Example(Peering01-Rg01 subcription name)"

# Create Resource Group for Peering region 01
 
New-AzResourceGroup -Name "Peering01-Rg01" -Location "EAST US" 
 
# Create Virtual Network for Peering region 02
 
New-AzVirtualNetwork -Name "Peering01-VNET01" -ResourceGroupName "Peering01-Rg01" -AddressPrefix "192.168.10.0/24" -Location "EAST US"


#login to Azure account using below command

Login-AzAccount -SubscriptionName "Example(Peering02-Rg02 subcription name)" -Tenant "your tenant ID"

Select-AzSubscription -SubscriptionName "Example(Peering02-Rg02 subcription name)"

# Create Resource Group for Peering region 02
 
New-AzResourceGroup -Name "Peering02-Rg02" -Location "EAST US" 
 
# Create Virtual Network for Peering region 01
 
New-AzVirtualNetwork -Name "Peering02-VNET02" -ResourceGroupName "Peering02-Rg02" -AddressPrefix "10.10.10.0/24" -Location "EAST US" 



# Peer Peering region 01-VirtualNetwork to Peering region 02-VirtualNetwork

# Select Peering01-Rg01 Subscription - Select-AZSubscription

Select-AzSubscription -SubscriptionName "Example(Peering02-Rg02 subcription name)"
 
$vNetA = Get-AZVirtualNetwork -Name "Peering02-VNET02" -ResourceGroupName "Peering02-Rg02"
 
## You need to specify the " Remotevirtualnetworkid " of the resource id of "Peering01-VNET01"
Add-AZVirtualNetworkPeering `
  -Name 'Peering01-VNET01' `
  -VirtualNetwork $vNetA `
  -RemoteVirtualNetworkId "/subscriptions/xxxx-c5b6-xxxx-b5ba-xxxxx/resourceGroups/Peering01-Rg01/providers/Microsoft.Network/virtualNetworks/Peering01-VNET01" 