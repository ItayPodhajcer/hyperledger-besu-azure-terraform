variable "name" {
  type        = string
  description = "Traffic manager endpoint name."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name."
}

variable "profile_name" {
  type        = string
  description = "Traffic manager profile name."
}

variable "target" {
  type        = string
  description = "Traffic manager endpoint target."
}
