# AWS terraform template
Terraform module which creates [ Direct Connect hosted connection](https://docs.aws.amazon.com/directconnect/latest/UserGuide/WorkingWithVirtualInterfaces.html) on AWS.


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
git checkout dx-vif
```
## Init project
In order to init the project, you run the command 

```HCL
terraform init
```
## Update parameter
  The following arguments are supported:

`dx_connection_name` - (Required) The name of the connection.
`dx_connection_bandwith` - (Required) The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps and 10Gbps. Case sensitive.
`dx_connection_id` - (Required) The ID of the interconnect or LAG.
`account_id` - (Required) The ID of the AWS account of the customer for the connection.
`vlan` - (Required) The dedicated VLAN provisioned to the hosted connection.

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