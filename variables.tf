variable "tfe_token" {
  type        = string
  description = "The token used to authenticate the TFE provider."
}

variable "tfe_hostname" {
  type        = string
  description = "The hostname of the HCP Terraform platform."
}

variable "tfe_organization_name" {
  type        = string
  description = "The name of the HCP Terraform organization to manage."
}

variable "tfe_organization_email" {
  type        = string
  description = "The email address of the HCP Terraform organization admin."
}

variable "tfe_workspace_bootstrap_name" {
  type        = string
  description = "The name of the workspace used to bootstrap the HCP Terraform organization."
  default     = "hcp-bootstrap"
}

# Testing

variable "tfe_organization_names" {
  type        = list(string)
  description = "A list of HCP Terraform organization names to manage."
}
