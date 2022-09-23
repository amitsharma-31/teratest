terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.17.0"
    }
  }

  required_version = ">= 1.2"
  cloud {
    organization = "amitest"
    workspaces {
      name = "teratest"
   }
  }
}
