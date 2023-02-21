provider "flux" {
  config_path = var.config_path
}

resource "flux_bootstrap_git" "this" {
  url  = "ssh://git@github.com/${var.github_repository}.git"
  path = var.target_path
  ssh = {
    username    = "git"
    private_key = var.private_key
  }
}