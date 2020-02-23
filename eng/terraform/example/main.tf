provider "azurerm" {
  version         = "=1.44.0"
}

locals {
  deployment_name = "example"
}

module "traffic_manager_resource_group" {
  source = "../modules/resource-group"

  name     = "rg-${local.deployment_name}-network-manager-eastus2"
  location = "eastus2"
}

module "traffic_manager" {
  source = "../modules/traffic-manager"

  name                = "tm-${local.deployment_name}"
  resource_group_name = module.traffic_manager_resource_group.this_name
}

module "eastus_location_deployment" {
  source = "../modules/location-deployment"

  location               = "eastus"
  deployment_name        = local.deployment_name
  profile_name           = module.traffic_manager.this_name
  profile_resource_group = module.traffic_manager_resource_group.this_name
  external_host_name     = module.traffic_manager.this_fqdn
}

module "westus_location_deployment" {
  source = "../modules/location-deployment"

  location               = "westus"
  deployment_name        = local.deployment_name
  profile_name           = module.traffic_manager.this_name
  profile_resource_group = module.traffic_manager_resource_group.this_name
  external_host_name     = module.traffic_manager.this_fqdn
}

module "centralus_location_deployment" {
  source = "../modules/location-deployment"

  location               = "centralus"
  deployment_name        = local.deployment_name
  profile_name           = module.traffic_manager.this_name
  profile_resource_group = module.traffic_manager_resource_group.this_name
  external_host_name     = module.traffic_manager.this_fqdn
}

