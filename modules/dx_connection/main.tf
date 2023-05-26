

resource "aws_dx_hosted_connection" "hosted" {
  connection_id    = var.dx_connection_id
  bandwidth        = var.dx_connection_bandwith
  name             = var.dx_connection_name
  owner_account_id = var.account_id
  vlan             = var.vlan
}

