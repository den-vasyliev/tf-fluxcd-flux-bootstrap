# Terraform Flux Bootstrap Git Module

This Terraform module creates a Git repository to be used as a source for Flux Bootstrap.

## Usage

```hcl
module "flux_bootstrap" {
  source            = "github.com/den-vasyliev/tf-fluxcd-flux-bootstrap"
  github_repository = "${var.GITHUB_OWNER}/${var.FLUX_GITHUB_REPO}"
  private_key       = module.tls_private_key.private_key_pem
  config_path = module.gke_cluster.kubeconfig
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
