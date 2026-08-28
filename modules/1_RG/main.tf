resource "azurerm_resource_group" "sandbox_rg" {
  for_each = var.sandbox_rg
  name = each.value.name
  location = each.value.location
  
}