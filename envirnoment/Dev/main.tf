#RG creation

module "rg" {
  source     = "../../modules/azurerm_resource_group"
  rg_details = var.rgs
}

#Storage account creation

module "stgs" {
  depends_on              = [module.rg]
  source                  = "../../modules/azurerm_storage_account"
  storage_account_details = var.stgs
}

#Vnet creation

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets
}

#Subnet creation

module "subnets" {
  depends_on = [module.vnet]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.snets
}

# #network interface creation
# module "nics" {
#   depends_on = [ module.subnets, module.vnet, module.rg ]
#   source = "../../Modules/azurerm_network_interface"
#   nicblock = var.nicblockaug  
# }

# #virtual machine creation
# module "vm" {
#   depends_on = [module.nics]
#   source = "../../Modules/azurerm_virtual_machine"
#   vm-love = var.vmmachine
#   }

# #keyvouat creation
#  module "kvs" {
#    depends_on = [module.rg]
#    source = "../../Modules/azurerm_key_vault"
#    kvut = var.kvutlocket
#  }