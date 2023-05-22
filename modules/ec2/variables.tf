variable "ami" {
  type    = string
  default = "ami-052f483c20fa1351a"
}

variable "sg_id" {
  type    = string
}

variable "sg_id_private" {
  type    = string
}

variable "public_subnet" {
  type    = any
}

variable "private_subnet" {
  type    = any
}

variable "key_name" {
  type = string
  default = "keypairname"
}