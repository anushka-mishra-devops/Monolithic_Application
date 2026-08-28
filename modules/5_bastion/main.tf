resource "azurerm_bastion_host" "sandbox_bastion" {
  for_each = var.bastion
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location

  ip_configuration {
    name = "bastion"
    subnet_id = data.azurerm_subnet.bastion_subnet[each.key].id
    public_ip_address_id = data.azurerm_public_ip.bastion_pip[each.key].id
  }
}
