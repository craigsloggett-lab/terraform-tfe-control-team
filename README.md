# terraform-tfe-control-team
An infrastructure as code repository for the central control team managing an HCP Terraform organization.

## Bootstrap Process
This repository can be used to bootstrap an empty HCP Terraform organization. Since the resources
specified in the `cloud` block within the `terraform` configuration block will be created on first
run of `terraform init`, we can use the `import` block to then manage these resources going
forward.

In order to successfully do this, you must set the values in `terraform.tfvars` to match the values
set in `backend.tf`:

```hcl
terraform {
  cloud {
    organization = "craigsloggett-lab"                    # var.tfe_organization_name
    hostname     = "tfe.craig-sloggett.sbx.hashidemos.io" # var.tfe_hostname

    workspaces {
      project = "Default Project" # Using project that is already created in HCP Terraform.
      name    = "hcp-bootstrap"   # var.tfe_workspace_bootstrap_name
    }
  }
}
```

```hcl
tfe_organization_name        = "craigsloggett-lab"
tfe_hostname                 = "tfe.craig-sloggett.sbx.hashidemos.io"
tfe_workspace_bootstrap_name = "hcp-bootstrap"
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization.lab](https://registry.terraform.io/providers/hashicorp/tfe/0.56.0/docs/resources/organization) | resource |
| [tfe_project.default](https://registry.terraform.io/providers/hashicorp/tfe/0.56.0/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tfe_hostname"></a> [tfe\_hostname](#input\_tfe\_hostname) | The hostname of the HCP Terraform platform. | `string` | n/a | yes |
| <a name="input_tfe_organization_email"></a> [tfe\_organization\_email](#input\_tfe\_organization\_email) | The email address of the HCP Terraform organization admin. | `string` | n/a | yes |
| <a name="input_tfe_organization_name"></a> [tfe\_organization\_name](#input\_tfe\_organization\_name) | The name of the HCP Terraform organization to manage. | `string` | n/a | yes |
| <a name="input_tfe_project_name"></a> [tfe\_project\_name](#input\_tfe\_project\_name) | The name of the project used to contain the bootstrap workspace. | `string` | `"Platform Team"` | no |
| <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token) | The token used to authenticate the TFE provider. | `string` | n/a | yes |
| <a name="input_tfe_workspace_name"></a> [tfe\_workspace\_name](#input\_tfe\_workspace\_name) | The name of the workspace used to bootstrap the HCP Terraform organization. | `string` | `"hcp-bootstrap"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
