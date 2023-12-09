### linode vars
variable "linode_token" {
  sensitive = true
}


### ssh vars
variable "adevries_ssh_keys" {
  type = list(string)
  default = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGq41eVSw7Wqr5BGirXbi1JPBSpwTND9Jmt7War7ixUF adevries@advdesktop",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOIO8ONk9EkTJF+DQBQbFjOwQ2E+n96+4CyKbLvRnsbu adevries17@adevries-win",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICNlmXmn2ycEDz0Sm7bSXA/jP4T0hm31I2iAIzq3iues adevries@fedoratop"
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
