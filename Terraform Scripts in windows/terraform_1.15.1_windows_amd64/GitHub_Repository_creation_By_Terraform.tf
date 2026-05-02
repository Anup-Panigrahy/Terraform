terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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"
}

resource "github_repository" "repository_crteation_in_GitHub_by_terraform" {
  name        = "repository_crteation_in_GitHub_by_terraform"
  description = "My awesome codebase"
  visibility  = "public"
}
