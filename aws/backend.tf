terraform {
  cloud {
    organization = "italy-hashiworkshops"

    workspaces {
      name = "workload-identity-stuff"
    }
  }
}