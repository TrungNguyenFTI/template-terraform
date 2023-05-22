
resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = "${tls_private_key.key_pair.public_key_openssh}"

  provisioner "local-exec"{
    command = "echo '${tls_private_key.key_pair.private_key_pem}' > ./${var.key_name}.pem"
  }
}

resource "aws_instance" "ec2-instance" {
  for_each       = { for k, v in var.public_subnet : k => v }
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = each.value.id
  key_name      = "${aws_key_pair.generated_key.key_name}"

  vpc_security_group_ids = [var.sg_id]
  associate_public_ip_address = true


  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "ec2-instance-private" {
  for_each       = { for k, v in var.private_subnet : k => v }
  ami           = var.ami
  instance_type = "t2.micro"
  subnet_id     = each.value.id
  key_name      = "${aws_key_pair.generated_key.key_name}"

  vpc_security_group_ids = [var.sg_id_private]

  tags = {
    Name = "tf-example-private"
  }
}