provider "aws" {
  region = "${var.s3_region}"
}

terraform {
  required_verion = "0.11.11"

  backend "s3" {
    //Cant use the local/variables so bad .... 
    bucket  = "my-4312-tf-test-bucket"
    key     = "4321/test"
    encrypt = "true"
    region  = "us-east-1"
  }
}
