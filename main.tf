terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.9.0"
    }
  }
}

variable "do_token" {
  export terraform_var_do_token = "3ff39b0eabd0e183dc83a914a6bdf3ee88242ff5b2f6342ff376f0943726808a"
}

provider "digitalocean" {
  token = var.do_token
}

variable "do_claster_name" {
  default = "koval"
}

resource "digitalocean_kubernetes_cluster" "koval" {
  name    = "koval"
  region  = "fra1"
  version = "1.20.7-do.0"

  node_pool {
    name       = "test-pool"
    size       = "s-1vcpu-2gb"
    node_count = 1
  }
}




