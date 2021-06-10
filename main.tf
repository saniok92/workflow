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

<<<<<<< HEAD
variable "do_claster_name" {
  default = "koval"
} 

=======

variable "do_claster_name" {
    default = "koval"
}
>>>>>>> 21c7b2c07c7a38f16a99dc98dbffc0b96ef5d2f3
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
