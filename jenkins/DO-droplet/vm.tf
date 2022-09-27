# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "Jenkins"
  region = "nyc3"
  size   = "s-2vcpu-4gb"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

# Create a new SSH key
resource "digitalocean_ssh_key" "default" {
  name       = "Terraform Key"
  public_key = file("/Users/jashanpreetpahwa/.ssh/terraform/ibt/id_rsa.pub")
}
