# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "aws_region" {
  type        = string
  description = "AWS region name to auth"
}

variable "tfc_oidc_arn" {
  type        = string
  default     = null
  description = "AWS ARN of tfc_hostname oidc provider available"
}

variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "tfc_organization_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  default     = "Default Project"
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type        = string
  default     = "my-aws-workspace"
  description = "The name of the workspace that you'd like to create and connect to AWS"
}

variable "github_token" {
  type        = string
  description = "GitHub OAuth token used for GitHub provider"
  default     = null
  sensitive   = true
}

variable "vcs_oauth_token_id" {
  type        = string
  description = "OAuth token ID used by VCS provider configured in TFC"
  default     = null
  sensitive   = true
}

variable "vcs_repo_configurations" {
  description = "Settings for the workspace's VCS repository, enabling VCS-driven run workflow."
  type = object({
    branch             = optional(string, null)
    identifier         = string
    ingress_submodules = optional(bool, false)
    oauth_token_id     = optional(string, null)
    tags_regex         = optional(string, null)
    working_dir        = optional(string, "/")
  })

  default = null
}

