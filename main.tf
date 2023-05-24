provider "aws" {
  region = "ap-southeast-1"
}

module "dx_connection" {
  source = "./modules/dx_connection"

  create_dx_connection = true

  dx_connection_bandwith = "1Gbps"
  dx_connection_location = "GSS52"
  dx_connection_name     = "DX-connection"
  dx_connection_provider = "Colt"

  dx_connection_tags = {
    Name  = "My-Test-Connection"
    Type  = "Primary"
    Label = "A"
  }

  create_dx_lag = true
  dx_lag_name   = "dx_lag_name"
}