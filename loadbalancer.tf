resource "digitalocean_loadbalancer" "test-lb" {
  name = "test-lb"
  region = "fra1"

  forwarding_rule {
    entry_port = 80
    entry_protocol = "http"

    target_port = 80
    target_protocol = "http"
  }

  healthcheck {
    port = 22
    protocol = "tcp"
  }

  droplet_ids = [digitalocean_droplet.koval.id, digitalocean_droplet.koval1.id ]
}