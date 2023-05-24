variable "create_dx_connection" {
  description = "Create a DX Connection"
  default     = false

  type = bool
}

variable "dx_connection_bandwith" {
  description = "DX Connection Bandwidth depends on location"
  default     = "1Gbps"

  type = string
}

variable "dx_connection_location" {
  description = "AWS Direct connect location"
  default     = "EqLD5"

  type = string
}

variable "dx_connection_provider" {
  description = "The name of the service provider"
  default     = null

  type = string
}


variable "dx_connection_tags" {
  description = "Tags for DX Connection"
  default     = {}

  type = map(string)
}

variable "dx_connection_name" {
  description = "The DX Connection name"
  default     = null

  type = string
}

variable "create_dx_lag" {
  description = "Creates a LAG Group"
  default     = true

  type = bool
}

variable "dx_lag_name" {
  description = "Name of the Lag group"
  default     = null

  type = string
}

variable "dx_lag_tags" {
  description = "Tags to associate with a Lag Group"
  default     = {}

  type = map(string)
}

variable "dx_connection_request_macsec" {
  description = "Optional attribute to allow the connection to support MAC Security, supported on 10 & 100Gbps connections"
  default     = false

  type = bool
}

variable "dx_connection_encryption_mode" {
  description = "The connection MAC Security (MACsec) encryption mode"
  default     = null

  type = string
}

variable "dx_connection_skip_destroy" {
  description = "Set to true if you don't want Terraform to delete the connection on destroy"
  default     = false

  type = bool
}
