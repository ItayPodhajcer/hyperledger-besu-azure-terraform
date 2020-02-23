output "example_fqdn" {
  value       = module.traffic_manager.this_fqdn
  description = "FQDN of the entrypoint for the created infrastructure."
}
