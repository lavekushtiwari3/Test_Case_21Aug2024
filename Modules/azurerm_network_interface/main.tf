resource "azurerm_network_interface" "nicblock" {
    for_each = var.nicblock
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "ip-internal"
    subnet_id                     =data.azurerm_subnet.data_snet.id
    private_ip_address_allocation = "Dynamic"
  }
}