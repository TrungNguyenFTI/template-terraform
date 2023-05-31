variable "create_dx_connection" {
  description = "Create a DX Connection"
  default     = false

  type = bool
}

variable "dx_vif_name" {
  description = "The DX Vif name"
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

variable "address_family" {
  description = "The address Id"
  default     = "ipv4"

  type = string
}

variable "bgp_asn" {
  description = "The bgp_asn"
  default     = null

  type = string
}

variable "bgp_asn_key" {
  description = "The bgp_asn key"
  default     = null

  type = string
}

variable "amazon_address" {
  description = "amazon_address"
  default     = "10.0.0.0/24"

  type = string
}

variable "customer_address" {
  description = "amazon_address"
  default     = "10.0.0.0/24"

  type = string
}

