# terraform-101
Sample Terraform with AWS configuration


All the Credentials of the AWS with region configuration are stored as env variables.

3 MAIN STEPS:
============

VALIDATE

PLAN

APPLY


Quick Notes


terraform plan

terraform plan -refresh=false  

terraform apply

terraform fmt -diff -- code conforms to cannonical form and formats the code

export TF_CLI_ARGS_apply="-auto-approve"

terraform validate
