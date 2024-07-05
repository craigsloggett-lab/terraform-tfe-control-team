resource "tfe_organization" "this" {
  name  = var.tfe_organization_name
  email = var.tfe_organization_email
}

resource "tfe_project" "default_project" {
  organization = tfe_organization.this.name
  name         = "Default Project"
}

resource "tfe_workspace" "bootstrap" {
  organization = tfe_organization.this.name
  project_id   = tfe_project.default_project.id
  name         = var.tfe_workspace_bootstrap_name
}
