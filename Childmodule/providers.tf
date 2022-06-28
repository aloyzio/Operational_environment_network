
terraform {
  required_version = ">=1.1.5"

  backend "s3" {
  bucket = "operational-environment-networking-tf-2211"
  dynamodb_table = "terraform-lock"
  key = "path/env"
  region = "us-east-1"
  encrypt = "true"
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }

 }
 
provider "aws" {
  region  = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::${lookup(var.env, terraform.workspace)}:role/Terraform_Admin_Role"
  }
}

#   default_tags {
#     tags = local.mandatory_tag

#   }

# }



# role_arn: arn:aws:iam::075701685737:role/Terraform_Admin_Role