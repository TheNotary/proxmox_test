terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_url
  api_token = "${var.pm_api_token_id}=${var.pm_api_token_secret}"
  ssh {
    agent    = true
    username = "root"
  }
}



resource "proxmox_virtual_environment_file" "packer_base_images" {
  content_type = "iso"
  datastore_id = "smallKing"
  node_name    = "proxmox"

  overwrite = true

  source_file {
    path = "test.img"
  }
}

