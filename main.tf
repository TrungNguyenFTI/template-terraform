provider "aws" {
  region = "ap-southeast-1"
  assume_role {
    role_arn = ""
  }
}

module "dx_connection" {
  source = "./modules/dx_connection"

  create_dx_connection = true

  dx_connection_bandwith = "50Mbps"
  dx_connection_id = "dxlag-fh4w6hom"
  account_id = "519338549408"
  dx_connection_name     = "DX-connection"
  vlan= "3333"
}