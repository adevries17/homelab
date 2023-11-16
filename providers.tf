terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~>4.0"
    }

    proxmox = {
      source  = "Telmate/proxmox"
      version = "~>2.9"
    }

    linode = {
      source  = "linode/linode"
      version = "~>2.9"
    }
  }
}

# provider configurations
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "proxmox" {
  # Configuration options
  pm_api_url          = "https://jezreel:8006/api2/json"
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
}

provider "linode" {
  token = var.linode_token
}
