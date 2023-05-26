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

variable "dx_connection_name" {
  description = "The DX Connection name"
  default     = null

  type = string
}


variable "vlan" {
  description = "The DX Connection Vlan"
  default     = null

  type = string
}

variable "account_id" {
  description = "The account Id"
  default     = null

  type = string
}

variable "dx_connection_id" {
  description = "The connection Id"
  default     = null

  type = string
}

