# Versions 
# Versions 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

# Authentication to AWS from Terraform code
provider "aws" {
  region     = "us-east-1"
  profile    = "default"
 

}

terraform {
  backend "s3" {
    bucket = "rajitha-30"
    key    = "terraform-30/terraform.state"
    region = "us-east-1"
  }
}

# Continuous Integration - Jenkins
resource "aws_instance" "iac_jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["var.vpc_security_group_ids"]
  iam_instance_profile   = var.iam_instance_profile

  user_data = file("jenkins.sh")
  tags = {
    Name      = "iac_jenkins"
    CreatedBy = "Terraform"
  }
}
