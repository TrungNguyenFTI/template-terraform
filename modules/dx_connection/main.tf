resource "aws_dx_connection" "dx_connection" {
  count = var.create_dx_connection ? 1 : 0

  name          = var.dx_connection_name
  bandwidth     = var.dx_connection_bandwith
  location      = var.dx_connection_location
  provider_name = var.dx_connection_provider

  request_macsec  = var.dx_connection_request_macsec
  encryption_mode = var.dx_connection_encryption_mode

  skip_destroy = var.dx_connection_skip_destroy

  tags = var.dx_connection_tags
}

resource "aws_dx_connection_association" "this" {
  count = var.create_dx_lag && var.create_dx_connection ? 1 : 0

  connection_id = aws_dx_connection.dx_connection.*.id[0]
  lag_id        = aws_dx_lag.dx_lag.*.id[0]
}

resource "aws_dx_lag" "dx_lag" {
  count = var.create_dx_lag ? 1 : 0

  connections_bandwidth = var.dx_connection_bandwith
  location              = var.dx_connection_location
  name                  = var.dx_lag_name

  tags = var.dx_lag_tags
}

