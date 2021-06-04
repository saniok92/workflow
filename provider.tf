#terraform provider 

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.9.0"
    }
  }
}
variable "digitalocean_token" {
    default = "test"
}

provider "digitalocean" {
  token = var.digitalocean_token
}