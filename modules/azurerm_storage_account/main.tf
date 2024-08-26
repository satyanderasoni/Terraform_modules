resource "azurerm_storage_account" "mstorage1" {
  name                     = var.mstore.name
  resource_group_name      = var.mstore.name
  location                 = var.mstore.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
