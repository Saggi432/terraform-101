resource "aws_s3_bucket" "main" {
  bucket = "my-432-tf-test-bucket"
  acl    = "private"

  tags = "${local.s3_tags}"
  region = "${var.s3_regions[0]}"
}
resource "aws_s3_bucket" "child-1" {
  bucket = "my-4312-tf-test-bucket"
  acl    = "private"
  tags = "${local.s3_tags}"
  region = "${var.s3_regions[0]}"
}
