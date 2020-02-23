variable "location" {
  type        = string
  description = "Location to deploy."
}

variable "profile_name" {
  type        = string
  description = "Traffic manager profile name."
}

variable "profile_resource_group" {
  type        = string
  description = "Resource group containing the traffic manager profile."
}

variable "deployment_name" {
  type        = string
  description = "Name of the deployment."
}

variable "external_host_name" {
  type        = string
  description = "The host name that will be used to access the node."
}
