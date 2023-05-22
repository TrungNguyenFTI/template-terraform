output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The VPC's ID"
}

output "public_subnet" {
  value = aws_subnet.public_subnet
}

output "private_subnet" {
  value = aws_subnet.private_subnet
}

output "sg_id" {
  value = aws_security_group.sg.id
}

output "sg_id_private" {
  value = aws_security_group.sg_private.id
}