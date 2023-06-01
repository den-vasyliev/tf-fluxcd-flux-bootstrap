provider "flux" {
  kubernetes = {
    host                   = var.config_host
    token                  = var.config_token
    cluster_ca_certificate = var.config_ca
    #config_path = var.config_path
  }
  git = {
    url = "https://github.com/${var.github_repository}.git"
    http = {
      username = "git"
      password = var.github_token
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = var.target_path
}
