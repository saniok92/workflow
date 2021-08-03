terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.10.1"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_kubernetes_cluster" "koval" {
  name    = "koval"
  region  = "fra1"
  version = "1.21.2-do.2"

  node_pool {
    name       = "test-pool"
    size       = "s-1vcpu-2gb"
    node_count = 1
  }
}

resource "digitalocean_certificate" "cert" {
  name = "cert"
  private_key = "file('key.pem')"
  leaf_certificate = "file('cert.pem')"

  lifecycle {
    create_before_destroy = true
  }
}

resource "digitalocean_loadbalancer" "sample" {
  name = "loadbalancer-classic"
  size = "lb-small"
  region = "fra1"

  forwarding_rule {
    entry_port = 443
    entry_protocol = "https"

    target_port = 80
    target_protocol = "http"

    certificate_name  = digitalocean_certificate.cert.name
  }

  healthcheck {
    port = 22
    protocol = "tcp"
  }

  droplet_ids  = [digitalocean_droplet.web.id]
}



  





