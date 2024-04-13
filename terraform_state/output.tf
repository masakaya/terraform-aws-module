output "bucket" {
  value       = aws_s3_bucket.terraform_state.bucket
  description = "S3Bucket"
}

output "bucket_arm" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "S3Bucket ARM"
}

output "bucket_id" {
  value       = aws_s3_bucket.terraform_state.id
  description = "S3Bucket ID"
}