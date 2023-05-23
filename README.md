# AWS terraform template
Terraform module which creates [VPC source](https://docs.aws.amazon.com/vpc/?icmpid=docs_homepage_featuredsvcs), [S3 source](https://docs.aws.amazon.com/s3/?icmpid=docs_homepage_featuredsvcs), [EC2 source](https://docs.aws.amazon.com/ec2/?icmpid=docs_homepage_featuredsvcs) on AWS.


## Requirements

The following requirements are needed by this module:

- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) (>= 0.14)

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> 

- <a name="provider_aws.accepter"></a>
  
## Cloning repository

First of all you need clone this repository by command

```HCL
git clone git@github.com:TrungNguyenFTI/template-terraform.git
```
and check out to module

```HCL  
git checkout template-vpc-s3-ec2
```
## Init project
In order to init the project, you run the command 

```HCL
terraform init
```
## Update parameter
  - Update `Region`, In file main.tf you can update the region at 
  ```HCL
    provider "aws" {
      region = "ap-southeast-1"
    }
  ```

  - Update `VPC`, In file main.tf you can update `cidr block`, number of `private subnet`, `public subnet`, `availability zone`  at VPC module 
  ```HCL
    module "vpc" {
      source = "./modules/vpc"

      vpc_cidr_block    = "10.0.0.0/16"
      private_subnet    = ["10.0.1.0/24"]
      public_subnet     = ["10.0.2.0/24"]
      availability_zone = ["ap-southeast-1a", "ap-southeast-1b"]
    }
  ```

  - Update `EC2`, In file main.tf you can update `ami`, `instance_type`  at EC2 module 
  ```HCL
    module "ec2" {
      source = "./modules/ec2"

      ami           ="ami-052f483c20fa1351a"
      instance_type = "t2.micro"
      sg_id         = module.vpc.sg_id
      sg_id_private = module.vpc.sg_id_private
      public_subnet = module.vpc.public_subnet
      private_subnet = module.vpc.private_subnet
    }
  ```
  It will create 1 EC2 in each subnet

## Process to apply
After update parameters you should run command

```HCL
  terraform fmt
```

```HCL
  terraform validate
```
to format and validate code.
If it's not error run command
```HCL
  terraform plan
```

and apply infrastructure by command 
```HCL
  terraform apply
```
In order to delete the resource run command
```HCL
  terraform destroy
```