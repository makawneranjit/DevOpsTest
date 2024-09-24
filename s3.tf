resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

resource "s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket
  rule {
    object_ownership  = "BucketOwnerPreferred"
  }
}