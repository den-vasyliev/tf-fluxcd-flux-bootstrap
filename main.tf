provider "flux" {
  kubernetes = {
    config_path = var.config_path
  }
  git = {
    url = "https://github.com/${var.github_repository}.git"
    http = {
      username = "git"
      password = var.GITHUB_TOKEN
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = var.target_path
}