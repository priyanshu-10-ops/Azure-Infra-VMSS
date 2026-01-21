resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnets

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }

  tags = each.value.tags
}



# Traffic Flow
/*
Internet
   ↓
Application Gateway (WAF v2)
   ↓
Frontend VMSS (NIC)
   ↓
Internal Load Balancer
   ↓
Backend VMSS (NIC)
   ↓
Private Endpoint
   ↓
Azure SQL
*/



# In parallel
/*
Backend VMSS → Private Endpoint → Key Vault
Backend VMSS → Log Analytics
All resources → Storage Account (diagnostics)
*/
