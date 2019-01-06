# terraform-101
Sample Terraform with AWS configuration


All the Credentials of the AWS with region configuration are stored as env variables.

3 MAIN STEPS:
============

VALIDATE

PLAN

APPLY


Quick Notes
============


terraform plan

terraform plan -refresh=false  

terraform apply

terraform fmt -diff -- code conforms to cannonical form and formats the code

export TF_CLI_ARGS_apply="-auto-approve"

terraform validate

terraform apply -auto-approve

git clean -fdx

Delete the resource
========================

terraform plan -destroy -- Delete the resources in the state file

terraform destroy

OR

Remove the resource from configuration and run terraform plan and terraform destroy

To disable the deletion, insert the below in the config file.

  lifecycle{
    prevent_destroy = "true"
  }
  
Managing the State
===================

Dont store them locally, use some S3 or some other storage mechanism like etcd, consul..etc.;

Make sure you enable versioning, encryption.


