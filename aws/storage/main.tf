resource "aws_s3_bucket" "storage" {

  bucket = var.bucket_name

  aws_region = var.aws_region

  tags = var.tags

  force_destroy = var.force_destroy

}

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.storage.id

  versioning_configuration {

    status = "Enabled"

  }

}
