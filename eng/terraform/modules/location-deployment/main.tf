module "resource_group" {
  source = "../resource-group"

  name     = "rg-${var.deployment_name}-deployment-${var.location}"
  location = var.location
}

module "container_group" {
  source = "../besu-container-group"

  name                = "aci-${var.deployment_name}-${var.location}"
  location            = var.location
  resource_group_name = module.resource_group.this_name
  external_host_name  = var.external_host_name
}

module "traffic_manager_endpoint" {
  source = "../traffic-manager-endpoint"

  name                = "tme-${var.deployment_name}-${var.location}"
  resource_group_name = var.profile_resource_group
  profile_name        = var.profile_name
  target              = module.container_group.this_fqdn
}
