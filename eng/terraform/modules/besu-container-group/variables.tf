variable "name" {
  type        = string
  description = "Container group name."
}

variable "location" {
  type        = string
  description = "Container group location."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
}

variable "external_host_name" {
  type        = string
  description = "The host name that will be used to access the node."
}
