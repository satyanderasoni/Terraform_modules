resource "azurerm_virtual_network" "mvent" {
  name                = var.vnet.name
  resource_group_name = var.vnet.resource_group_name
  location            = var.vnet.location
  address_space       = var.vnet.address_space
  dns_servers         = var.vnet.dns_servers
}
