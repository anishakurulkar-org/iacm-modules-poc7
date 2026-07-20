variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "tags" {
  description = "Common Tags"
  type        = map(string)
  default     = {}
}
