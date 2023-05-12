terraform {
  cloud {
    organization = "event-observability-datadog"

    workspaces {
      name = "aws-workload-identity"
    }
  }
}