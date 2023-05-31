provider "aws" {
  region = "ap-southeast-1"
  assume_role {
    role_arn = ""
  }
}

module "dx_vif" {
  source = "./modules/dx_vif"

  create_dx_connection = true

  dx_connection_id = ""
  account_id = ""
  dx_vif_name     = "DX-vif-test"
  vlan= "3333"
  bgp_asn = "65352"
  bgp_asn_key= "bgp_asn_key"
  # amazon_address= "10.0.0.0/24"
  # customer_address= "10.0.0.0/24"
  address_family= "ipv4"
}