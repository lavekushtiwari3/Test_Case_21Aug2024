data "azurerm_subnet" "data_snet" {
  name                 = "subnet-1"
  resource_group_name  = "rg-lkt1"
  virtual_network_name = "vnet1"
}

data "azurerm_network_interface" "data_nic" {
   name                = "nicblockaug"
   resource_group_name = "rg-lkt1"
}

data "azurerm_client_config" "currentkv" {}

