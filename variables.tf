variable "pm_api_token_id" {
  sensitive = true
}
variable "pm_api_token_secret" {
  sensitive = true
}
variable "linode_token" {
  sensitive = true
}
variable "adevries_ssh_keys" {
  type    = list(string)
  default = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJwMJLwWNCSFvI2YXTadg1EQXZpCZWyXRUjSDbd2iVNb adevries@adevries-pc"]
}
variable "helper_keys" {
  type      = list(string)
  sensitive = true
}
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
