# Terraform Flux Bootstrap Git Provider

This Terraform module creates a Git repository to be used as a source for Flux Bootstrap.

## Usage

```hcl
provider "flux" {
  config_path = var.config_path
}

resource "flux_bootstrap_git" "this" {
  url  = "ssh://git@github.com/${var.github_repository}.git"
  path = var.target_path
  ssh = {
    username    = "git"
    ## Use tls module https://github.com/den-vasyliev/tf-hashicorp-tls-keys
    private_key = var.private_key
  }
}
```
## Inputs
- github_repository - (Required) The name of the Git repository to be created.
- target_path - (Optional) The path to clone the Git repository into. Default value is clusters.
- private_key - (Required) The SSH private key to use for Git operations.
- config_path - (Optional) The path to the Kubernetes configuration file. Default value is ~/.kube/config.

## Outputs
None.

License
This module is licensed under the MIT License. See the LICENSE file for details.
