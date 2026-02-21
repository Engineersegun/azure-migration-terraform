resource "azurerm_resource_group" "mgn_rg" {
  name     = var.resource_group_name
  location = "East US"
}

resource "azurerm_virtual_network" "mgn_vnet" {
  name                = "migration-vnet-final"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.mgn_rg.location
  resource_group_name = azurerm_resource_group.mgn_rg.name
}

resource "azurerm_subnet" "mgn_subnet" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.mgn_rg.name
  virtual_network_name = azurerm_virtual_network.mgn_vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "mgn_nic" {
  name                = "mgn-nic"
  location            = azurerm_resource_group.mgn_rg.location
  resource_group_name = azurerm_resource_group.mgn_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mgn_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "source_vm" {
  name                = "Azure-Source-Server"
  resource_group_name = azurerm_resource_group.mgn_rg.name
  location            = azurerm_resource_group.mgn_rg.location
  size                = "Standard_D2s_v3"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.mgn_nic.id,
  ]

  admin_password                  = var.admin_password
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
