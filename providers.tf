terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~>4.0"
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

provider "linode" {
  token = var.linode_token
}
