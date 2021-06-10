terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.9.0"
    }
  }
}

variable "do_token" {}

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
    name       = "koval"
    size       = "s-1vcpu-2gb" 
    auto_scale = false
    node_count = 1
  }
}
