rg = {
  rg1 = {
    name     = "sandbox_rg"
    location = "east asia"
  }
}
vnet = {
  vnet1 = {
    name                = "sandbox_vnet"
    resource_group_name = "sandbox_rg"
    location            = "east asia"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "frontend_subnet"
    resource_group_name  = "sandbox_rg"
    virtual_network_name = "sandbox_vnet"
    address_prefixes     = ["10.0.1.0/26"]
  }
  subnet2 = {
    name                 = "backend_subnet"
    resource_group_name  = "sandbox_rg"
    virtual_network_name = "sandbox_vnet"
    address_prefixes     = ["10.0.2.0/26"]
  }
}

bastion = {
  bastion1 = {
    subnet_name         = "AzureBastion"
    resource_group_name = "sandbox_rg"
    vnet_name           = "sandbox_vnet"
    name                = "Azurebastion"
    location            = "east asia"


  }
}
vm = {
  vm1 = {
    nic_name            = "frontend_nic"
    resource_group_name = "sandbox_rg"
    location            = "east asia"
    subnet_name         = "frontend_subnet"
    vnet_name           = "sandbox_vnet"
    pip_name            = "frontend_pip"
    vm_name             = "frontend_vm1"
    size                = "Standard_D2_v5"
    admin_username      = "devops@1234"
    admin_password      = "devops@1234"

  }
  vm2 = {
    nic_name            = "frontend_nic"
    resource_group_name = "sandbox_rg"
    location            = "east asia"
    subnet_name         = "frontend_subnet"
    vnet_name           = "sandbox_vnet"
    pip_name            = "frontend_pip"
    vm_name             = "frontend_vm2"
    size                = "Standard_D2_v5"
    admin_username      = "devops@1234"
    admin_password      = "devops@1234"

  }
  vm3 = {
    nic_name            = "backend_nic"
    resource_group_name = "sandbox_rg"
    location            = "east asia"
    subnet_name         = "backend_subnet"
    vnet_name           = "sandbox_vnet"
    pip_name            = "backendend_pip"
    vm_name             = "backend_vm"
    size                = "Standard_D2_v5"
    admin_username      = "devops@1234"
    admin_password      = "devops@1234"

  }
  vm4 = {
    nic_name            = "backend_nic"
    resource_group_name = "sandbox_rg"
    location            = "east asia"
    subnet_name         = "backend_subnet"
    vnet_name           = "sandbox_vnet"
    pip_name            = "backendend_Ppip"
    vm_name             = "backend_vm2"
    size                = "Standard_D2_v5"
    admin_username      = "devops@1234"
    admin_password      = "devops@1234"

  }
}