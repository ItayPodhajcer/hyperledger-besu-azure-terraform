output "this_name" {
  value       = azurerm_traffic_manager_profile.this.name
  description = "Name of the created traffic manager profile."
}

output "this_fqdn" {
  value       = azurerm_traffic_manager_profile.this.fqdn
  description = "FQDN of the created traffic manager profile."
}
