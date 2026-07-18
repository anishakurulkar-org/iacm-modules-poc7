# AWS Compute Module

## Description

Reusable OpenTofu module for provisioning an EC2 instance.

## Resources

- EC2 Instance

## Inputs

- instance_name
- ami_id
- instance_type
- subnet_id
- security_group_ids
- key_name
- tags

## Outputs

- instance_id
- public_ip
- private_ip
- arn

## Example

```hcl
module "compute" {

  source = "<Harness Code Repository>"

  instance_name = "demo-server"

  ami_id = "ami-xxxxxxxx"

  instance_type = "t3.micro"

  subnet_id = "subnet-xxxxxxxx"

  security_group_ids = ["sg-xxxxxxxx"]

  key_name = "demo-key"

  tags = module.common_tags.tags

}
```