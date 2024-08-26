module "rg_module" {
  source = "../modules/azurerm_resource_group"
  mrg    = var.mrg
}

module "stor_module" {
  depends_on = [module.rg_module]
  source     = "../modules/azurerm_storage_account"
  mstore     = var.mstore
}

module "vnet_module" {
  depends_on = [module.rg_module]
  source     = "../modules/azurerm_virtual_network"
  vnet       = var.vnet
}

module "subnet_module" {
  depends_on = [module.vnet_module]
  source     = "../modules/azurerm_subnet"
  msubnet    = var.msubnet
}
