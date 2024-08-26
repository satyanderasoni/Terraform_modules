mrg = {
  name     = "mrg1"
  location = "westus2"
}
mstore = {
  name                = "mstore1"
  resource_group_name = "mrg1"
  location            = "westus2"
}

vnet = {
  name                = "mvnet1"
  resource_group_name = "mrg1"
  location            = "westus2"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

msubnet = {
  subnet1 = {
    name                 = "msubnet1"
    resource_group_name  = "mrg1"
    virtual_network_name = "mvnet1"
    address_prefixes     = ["10.0.1.0/24"]
  },
  subnet2 = {
    name                 = "msubnet2"
    resource_group_name  = "mrg1"
    virtual_network_name = "mvnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
