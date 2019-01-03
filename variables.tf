variable "s3_bucket_name" {
  #default = "my-432-tf-test-bucket"
  description = "This is my default bucket name"
  type = "string"
}

variable "s3_tags" {
  type = "map"
  default = {
    created_by = "terraform"
    environment ="test"
  }
}

variable "s3_regions" {
  type = "list"
  default = ["us-west-2"]
}
