#terraform provider 

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
variable "do_token" {
  default = "test"
}

provider "digitalocean" {
  token = "secrets.do_token"
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

