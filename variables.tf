variable "github_repository" {
  type        = string
  description = "GitHub repository to store Flux manifests"

  validation {
    condition     = length(var.github_repository) > 0
    error_message = "The github_repository must not be empty."
  }
}

variable "flux_namespace" {
  type        = string
  default     = "flux-system"
  description = "GitHub repository to store Flux manifests"
}

variable "target_path" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

variable "github_token" {
  type        = string
  default     = ""
  description = "The token used to authenticate with the Git repository"

  validation {
    condition     = length(var.github_token) > 0
    error_message = "The github_token must not be empty."
  }
}

variable "private_key" {
  type        = string
  default     = ""
  description = "The private key used to authenticate with the Git repository"

  validation {
    condition     = length(var.private_key) > 0
    error_message = "The private_key must not be empty."
  }
}

variable "config_host" {
  type        = string
  default     = "gke"
  description = "The url for gke"
}

variable "config_token" {
  type        = string
  default     = "token"
  description = "The token for gke"

  validation {
    condition     = length(var.config_token) > 0
    error_message = "The config_token must not be empty."
  }
}

variable "config_ca" {
  type        = string
  default     = "ca"
  description = "The ca for gke"
  validation {
    condition     = length(var.config_ca) > 0
    error_message = "The config_ca must not be empty."
  }
 }