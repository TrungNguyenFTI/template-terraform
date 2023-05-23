provider "aws" {
  region = "ap-southeast-1"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block    = "10.0.0.0/16"
  private_subnet    = ["10.0.1.0/24"]
  public_subnet     = ["10.0.2.0/24"]
  availability_zone = ["ap-southeast-1a", "ap-southeast-1b"]
}

module "ec2" {
  source = "./modules/ec2"

  ami           ="ami-052f483c20fa1351a"
  instance_type = "t2.micro"
  sg_id         = module.vpc.sg_id
  sg_id_private = module.vpc.sg_id_private
  public_subnet = module.vpc.public_subnet
  private_subnet = module.vpc.private_subnet
}

module "s3_bucket" {
  source = "./modules/s3"
}
