resource "aws_s3_bucket" "main" {
  bucket = "${var.s3_bucket_prefix}-${var.environment}-${var.s3_region}"
  acl    = "private"

  tags   = "${local.s3_tags}"
  region = "${var.s3_region}"
}

resource "aws_s3_bucket" "child-1" {
  bucket = "my-4312-tf-test-bucket"
  acl    = "private"
  tags   = "${local.s3_tags}"
  region = "${var.s3_region}"
}
