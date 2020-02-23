output "this_fqdn" {
  value       = azurerm_container_group.this.fqdn
  description = "FQDN of the created container group."
}
