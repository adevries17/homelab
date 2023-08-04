### CLOUDFLARE
resource "cloudflare_record" "proxy" {
  zone_id = var.tzone
  name    = "proxy"
  type    = "A"
  value   = "194.195.220.81"
  comment = "linode reverse proxy"
}
resource "cloudflare_record" "gunnermc" {
  zone_id = var.tzone
  name    = "gunnermc"
  type    = "A"
  value   = "98.212.107.220"
}
resource "cloudflare_record" "root" {
  zone_id = var.tzone
  name    = "turtlesnet.cloud"
  type    = "A"
  value   = "194.195.220.81"
}
resource "cloudflare_record" "dkim1" {
  zone_id = var.tzone
  name    = "fm1._domainkey"
  type    = "CNAME"
  value   = "fm1.turtlesnet.cloud.dkim.fmhosted.com"
}
resource "cloudflare_record" "dkim2" {
  zone_id = var.tzone
  name    = "fm2._domainkey"
  type    = "CNAME"
  value   = "fm2.turtlesnet.cloud.dkim.fmhosted.com"
}
resource "cloudflare_record" "dkim3" {
  zone_id = var.tzone
  name    = "fm3._domainkey"
  type    = "CNAME"
  value   = "fm3.turtlesnet.cloud.dkim.fmhosted.com"
}
resource "cloudflare_record" "matrix" {
  zone_id = var.tzone
  name    = "matrix"
  type    = "CNAME"
  value   = "proxy.turtlesnet.cloud"
}
resource "cloudflare_record" "teamspeak" {
  zone_id = var.tzone
  name    = "ts"
  type    = "CNAME"
  value   = "gunnermc.turtlesnet.cloud"
  comment = "teamspeak"
}
resource "cloudflare_record" "mx1" {
  zone_id  = var.tzone
  name     = "turtlesnet.cloud"
  type     = "MX"
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}
resource "cloudflare_record" "mx2" {
  zone_id  = var.tzone
  name     = "turtlesnet.cloud"
  type     = "MX"
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}
resource "cloudflare_record" "pwned" {
  zone_id = var.tzone
  name    = "turtlesnet.cloud"
  type    = "TXT"
  value   = "have-i-been-pwned-verification=68b67f7f858e989bf7b87be870d0355e"
  comment = "troy hunt pwnage"
}
resource "cloudflare_record" "spf" {
  zone_id = var.tzone
  name    = "turtlesnet.cloud"
  type    = "TXT"
  value   = "v=spf1 include:spf.messagingengine.com ?all"
}

### devries domain
resource "cloudflare_record" "dkim1_devries" {
  zone_id = var.dzone
  name    = "fm1._domainkey"
  type    = "CNAME"
  value   = "fm1.andrewdevries.net.dkim.fmhosted.com"
}
resource "cloudflare_record" "dkim2_devries" {
  zone_id = var.dzone
  name    = "fm2._domainkey"
  type    = "CNAME"
  value   = "fm2.andrewdevries.net.dkim.fmhosted.com"
}
resource "cloudflare_record" "dkim3_devries" {
  zone_id = var.dzone
  name    = "fm3._domainkey"
  type    = "CNAME"
  value   = "fm3.andrewdevries.net.dkim.fmhosted.com"
}
resource "cloudflare_record" "mx1_devries" {
  zone_id  = var.dzone
  name     = "andrewdevries.net"
  type     = "MX"
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}
resource "cloudflare_record" "mx2_devries" {
  zone_id  = var.dzone
  name     = "andrewdevries.net"
  type     = "MX"
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}
resource "cloudflare_record" "pwned_devries" {
  zone_id = var.dzone
  name    = "andrewdevries.net"
  type    = "TXT"
  value   = "have-i-been-pwned-verification=24f45a2bd2dbddd80e25c2bbb804a147"
  comment = "troy hunt pwnage"
}
resource "cloudflare_record" "spf_devries" {
  zone_id = var.dzone
  name    = "andrewdevries.net"
  type    = "TXT"
  value   = "v=spf1 include:spf.messagingengine.com ?all"
}
resource "cloudflare_record" "dmarc_devries" {
  zone_id = var.dzone
  name    = "_dmarc"
  type    = "TXT"
  value   = "v=DMARC1; p=quarantine; rua=mailto:admin@andrewdevries.net"
}
resource "cloudflare_record" "dkim1_devzone" {
  zone_id = var.devzone
  name    = "fm1._domainkey"
  type    = "CNAME"
  value   = "fm1.turtlesnet.dev.dkim.fmhosted.com"
}
resource "cloudflare_record" "dkim2_devzone" {
  zone_id = var.devzone
  name    = "fm2._domainkey"
  type    = "CNAME"
  value   = "fm2.turtlesnet.dev.dkim.fmhosted.com"
}
resource "cloudflare_record" "dkim3_devzone" {
  zone_id = var.devzone
  name    = "fm3._domainkey"
  type    = "CNAME"
  value   = "fm3.turtlesnet.dev.dkim.fmhosted.com"
}
resource "cloudflare_record" "mx1_devzone" {
  zone_id  = var.devzone
  name     = "turtlesnet.dev"
  type     = "MX"
  value    = "in1-smtp.messagingengine.com"
  priority = 10
}
resource "cloudflare_record" "mx2_devzone" {
  zone_id  = var.devzone
  name     = "turtlesnet.dev"
  type     = "MX"
  value    = "in2-smtp.messagingengine.com"
  priority = 20
}
resource "cloudflare_record" "pwned_devzone" {
  zone_id = var.devzone
  name    = "turtlesnet.dev"
  type    = "TXT"
  value   = "have-i-been-pwned-verification=24f45a2bd2dbddd80e25c2bbb804a147"
  comment = "troy hunt pwnage"
}
resource "cloudflare_record" "spf_devzone" {
  zone_id = var.devzone
  name    = "turtlesnet.dev"
  type    = "TXT"
  value   = "v=spf1 include:spf.messagingengine.com ?all"
}
resource "cloudflare_record" "dmarc_devzone" {
  zone_id = var.devzone
  name    = "_dmarc"
  type    = "TXT"
  value   = "v=DMARC1; p=quarantine; rua=mailto:admin@andrewdevries.net"
}



### LINODE
resource "linode_instance" "linode1" {
  label           = "linode1"
  image           = "linode/debian12"
  region          = "us-central"
  type            = "g6-nanode-1"
  backups_enabled = true

  authorized_keys = flatten([
    var.adevries_ssh_keys,
    var.helper_keys
  ])

  tags = [
    "matrix",
    "synapse"
  ]
}


### PROXMOX
