

resource "aws_dx_hosted_private_virtual_interface" "vif" {
  connection_id    = var.dx_connection_id
  name             = var.dx_vif_name
  owner_account_id = var.account_id
  vlan             = var.vlan
  address_family   = var.address_family
  bgp_asn          = var.bgp_asn
  # amazon_address   = var.amazon_address
  # customer_address   = var.customer_address
}

