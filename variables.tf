variable "github_repository" {
  type = string
}

variable "target_path" {
  type    = string
  default = "clusters"
}

variable "private_key" {
  type = string
}

variable "config_path" {
  type    = string
  default = "~/.kube/config"
}