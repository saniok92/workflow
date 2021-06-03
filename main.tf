#terraform provider 

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}
variable "DO_TOKEN" {
  default = "test"
}

provider "digitalocean" {
  token = var.DO_TOKEN
}

# terraform kubernetes claster
variable "do_claster_name" {
  default = "koval"
}

resource "digitalocean_kubernetes_cluster" "koval" {
  name    = "koval"
  region  = "fra1"
  version = "1.20.2-do.0"

  node_pool {
    name       = "test-pool"
    size       = "s-1vcpu-2gb"
    node_count = 1
  }
}

