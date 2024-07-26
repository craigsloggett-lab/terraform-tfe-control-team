import {
  to = tfe_organization.this
  id = var.tfe_organization_name
}

import {
  to = tfe_project.default_project
  id = tfe_organization.this.default_project_id
}

import {
  to = tfe_workspace.bootstrap
  id = "${tfe_organization.this.name}/${var.tfe_workspace_bootstrap_name}"
}
