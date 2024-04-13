locals {
  lock_table = {
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"
    attribute = {
      name = "LockID"
      type = "S"
    }
  }
}

# S3
resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  # S3のバージョニング有効
  versioning_configuration {
    status = var.versioning_enable
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}

resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# DynamoDB
resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.lock_table
  billing_mode = local.lock_table.billing_mode
  hash_key     = local.lock_table.hash_key
  attribute {
    name = local.lock_table.attribute.name
    type = local.lock_table.attribute.type
  }
}
