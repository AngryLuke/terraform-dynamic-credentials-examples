terraform {
  required_version = "~> 1.4.6"
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.44.1"
    }
    github = {
      source  = "integrations/github"
      version = "5.25.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}