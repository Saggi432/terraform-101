resource "aws_s3_bucket" "main" {
  bucket = "${var.s3_bucket_prefix}-${var.environment}-${var.s3_region}"
  acl    = "private"

  tags   = "${local.s3_tags}"
  region = "${var.s3_region}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = "true"
  }

  lifecycle {
    prevent_destroy = "true"
  }
}

resource "aws_s3_bucket" "child-1" {
  bucket = "my-4312-tf-test-bucket"
  acl    = "private"
  tags   = "${local.s3_tags}"
  region = "${var.s3_region}"
}
