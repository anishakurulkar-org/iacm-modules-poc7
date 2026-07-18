# AWS Storage Module

## Description

Reusable OpenTofu module for provisioning an Amazon S3 Bucket.

## Resources Created

- Amazon S3 Bucket
- Bucket Versioning

## Inputs

| Name | Type | Required |
|------|------|----------|
| bucket_name | string | Yes |
| tags | map(string) | No |

## Outputs

| Name |
|------|
| bucket_name |
| bucket_arn |
| bucket_region |

## Example

```hcl
module "storage" {

  source = "<Harness Code Repository>"

  bucket_name = "company-dev-storage"

  tags = {

    Environment = "Dev"

    Project = "Problem7"

  }

}
```