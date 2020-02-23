resource "azurerm_traffic_manager_endpoint" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  profile_name        = var.profile_name
  target              = var.target
  type                = "externalEndpoints"
  weight              = 100
}
