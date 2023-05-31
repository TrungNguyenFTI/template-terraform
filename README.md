# AWS terraform template
Terraform module which creates [ Direct Connect hosted private virtual interface](https://docs.aws.amazon.com/directconnect/latest/UserGuide/WorkingWithVirtualInterfaces.html) on AWS.


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

`address_family` - (Required) The address family for the BGP peer. ipv4 or ipv6.
`bgp_asn` - (Required) The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
`connection_id` - (Required) The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
`dx_vif_name` - (Required) The name for the virtual interface.
`account_id` - (Required) The AWS account that will own the new virtual interface.
`vlan` - (Required) The VLAN ID.
`amazon_address` - (Optional) The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
`bgp_auth_key` - (Optional) The authentication key for BGP configuration.
`customer_address` - (Optional) The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.

But I'm commenting `amazon_address` and `customer_address`, If you have both, u can uncomment and update those data

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