rgs = {
  rg1 = {
    name     = "rg-lkt11"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg-lkt22"
    location = "centralindia"
  }
}

stgs = {
  stg1 = {
    name                     = "stglkt11"
    location                 = "centralindia"
    resource_group_name      = "rg-lkt11"
    account_replication_type = "LRS"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet1"
    location            = "centralindia"
    resource_group_name = "rg-lkt11"
    address_space       = ["10.0.0.0/16"]
  }
#   vnet2 = {
#     name                = "vnet2"
#     location            = "centralindia"
#     resource_group_name = "rg-lkt1"
#     address_space       = ["10.128.0.0/16"]
#   }
}

snets = {
  snet1 = {
    name                 = "subnet-1"
    resource_group_name  = "rg-lkt11"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

# nicblockaug = {
#   nic1 = {
#   name                = "nicblockaug"
#   location            = "centralindia"
#   resource_group_name = "rg-lkt11"
#   }
# }

# vmmachine = {
#   vmlove1 = {
#     name                           = "vm-love1"
#    resource_group_name             = "rg-lkt11"
#    location                        = "central india"
#   }
# }

# kvutlocker = {
#   kvutlocker1 = { 
#   name                        = "keyvaultlocker"
#   location                    = "central india"
#   resource_group_name         = "rg-lkt11"
#     }
# }