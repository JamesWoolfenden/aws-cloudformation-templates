resource "aws_s3_bucket" "S3BUCKET" {
  bucket=var.BucketName
}
resource "aws_s3_bucket_server_side_encryption_configuration" "S3BUCKET" {
  bucket = aws_s3_bucket.S3BUCKET.bucket
  rule {
    apply_server_side_encryption_by_default {
       sse_algorithm     = "AES256"
    }
  }
}
