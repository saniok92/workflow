#terraform provider 

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.9.0"
    }
  }
}
variable "DIGITALOCEAN_TOKEN" {
    default = "test"
}

provider "digitalocean" {
  token = var.DIGITALOCEAN_TOKEN
}