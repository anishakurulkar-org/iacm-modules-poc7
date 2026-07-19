variable "bucket_name" {

  description = "Name of the S3 Bucket"

  type = string

  validation {

    condition = (
      length(var.bucket_name) >= 3 &&
      length(var.bucket_name) <= 63 &&
      can(regex("^[a-z0-9][a-z0-9.-]*[a-z0-9]$", var.bucket_name))
    )

    error_message = "Bucket name must be 3-63 characters, lowercase, and contain only letters, numbers, hyphens or periods."

  }

}

variable "aws_region" {

  description = "AWS Region"

  type        = string

}

variable "force_destroy" {

  description = "Whether to delete the bucket even if it contains objects"

  type        = bool

  default     = false
}

variable "tags" {

  description = "Common resource tags"

  type = map(string)

  default = {}

}

variable "enable_versioning" {

  description = "Enable bucket versioning"

  type = bool

  default = true

}

