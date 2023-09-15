packer {
  required_plugins {
    digitalocean = {
      version = ">= 1.0.4"
      source  = "github.com/digitalocean/digitalocean"
    }
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "~> 1"
    }
  }
}

source "digitalocean" "kubeadm-base" {
  api_token    = var.do_token
  region       = var.do_region
  size         = var.do_size
  image        = var.do_image
  tags         = [var.tag]
  monitoring   = true
  droplet_name = var.droplet_name

  # The Ubuntu cloud image defaults to using a root account called "root"
  ssh_username = "root"
}

build {
  name    = "kubeadm-base-packer"
  sources = ["source.digitalocean.kubeadm-base"]

  provisioner "ansible" {
    playbook_file = "./ansible/main.yaml"
  }
}