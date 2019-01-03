resource "aws_s3_bucket" "main" {
  bucket = "my-432-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
