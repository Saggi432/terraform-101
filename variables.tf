variable "s3_bucket_name" {
  default = "my-432-tf-test-bucket"
  description = "This is my default bucket name"
  type = "string"
}

variable "environment" {
  default = "test"
  description = "Holds the environment_variable"
  type = "string"
}

locals{
  s3_tags = {
    created_by = "terraform"
    environment = "${var.environment}"
  }
}

/*variable "s3_tags" {
  type = "map"
  default = {
    created_by = "terraform"
    environment ="test"
  }
}*/



variable "s3_regions" {
  type = "list"
  default = ["us-east-1"]
}
