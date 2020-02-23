resource "azurerm_container_group" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "public"
  dns_name_label      = var.name
  os_type             = "Linux"

  container {
    name     = "hyperledger-besu"
    image    = "hyperledger/besu"
    cpu      = "1.0"
    memory   = "1.0"
    commands = ["besu", "--rpc-http-enabled", "--host-whitelist=${var.external_host_name}", "--rpc-http-cors-origins=*"]

    ports {
      port     = 8545
      protocol = "TCP"
    }
  }
}
