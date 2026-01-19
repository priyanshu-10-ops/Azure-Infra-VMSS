variable "rgs" {
  type = map(object({
    name = string
    location = string
  }))
}

resource "azurerm_resource_group" "rg" {
  for_each = {
    "rg1" = {
      name = "rg-infra"
      location = "EastUS"
    }
  }
  name = each.value.name
  location = each.value.location
}