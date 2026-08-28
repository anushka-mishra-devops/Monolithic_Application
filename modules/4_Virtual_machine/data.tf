data "azurerm_subnet" "data_subnet" {
  for_each = var.sandbox_vm
  name = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_public_ip" "data_pip" {
  for_each = var.sandbox_vm
  name = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}