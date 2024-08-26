resource "azurerm_resource_group" "mrg_block1" {
  name     = var.mrg.name
  location = var.mrg.location
}
