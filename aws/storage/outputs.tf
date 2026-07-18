output "bucket_name" {

  description = "S3 Bucket Name"

  value = aws_s3_bucket.storage.id

}

output "bucket_arn" {

  description = "S3 Bucket ARN"

  value = aws_s3_bucket.storage.arn

}

output "bucket_region" {

  description = "AWS Region"

  value = aws_s3_bucket.storage.region

}