### proxmox vars
variable "pm_api_token_id" {
  sensitive = true
}
variable "pm_api_token_secret" {
  sensitive = true
}
variable "ciuser" {
  type    = string
  default = "adevries"
}
variable "debian" {
  type    = string
  default = "debian12"
}
variable "jammy" {
  type    = string
  default = "jammy-server"
}
variable "alma" {
  type    = string
  default = "alma9"
}

### linode vars
variable "linode_token" {
  sensitive = true
}


### ssh vars
variable "adevries_ssh_keys" {
  type = list(string)
  default = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGq41eVSw7Wqr5BGirXbi1JPBSpwTND9Jmt7War7ixUF adevries@advdesktop",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG5DP6uLRik0wJTga7pQEXLQmCX0vcuxQ2BDr6BMLit8 adevries@advpangolin",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOIO8ONk9EkTJF+DQBQbFjOwQ2E+n96+4CyKbLvRnsbu adevries17@adevries-win"
  ]
}
variable "helper_keys" {
  type      = list(string)
  sensitive = true
}


### Cloudflare vars
variable "cloudflare_api_token" {
  sensitive = true
}
variable "tzone" {
  type    = string
  default = "8d245b8a349a25ce6292286175a2c509"
}
variable "dzone" {
  type    = string
  default = "95c0d434b4b3aa38176477d54a4813f8"
}
variable "devzone" {
  type    = string
  default = "2a5bd7dcfc16c5ed19c9ec7e3bf9cc26"
}
