module "mod_rg" {
  source     = "../../modules/1_RG"
  sandbox_rg = var.rg
}
module "mod_vnet" {
  depends_on   = [module.mod_rg]
  source       = "../../modules/2_Vnet"
  sandbox_vnet = var.vnet
}
module "mod_subnet" {
  depends_on     = [module.mod_vnet]
  source         = "../../modules/3_subnet"
  sandbox_subnet = var.subnet
}
module "mod_vm" {
  depends_on = [module.mod_subnet, module.mod_vnet]
  source     = "../../modules/4_Virtual_machine"
  sandbox_vm = var.vm
}
module "mod_bastion" {
  depends_on = [module.mod_subnet, module.mod_vnet]
  source     = "../../modules/5_bastion"
  bastion    = var.bastion
}