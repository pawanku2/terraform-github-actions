
terraform {
  required_version = ">= 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
#  backend "s3" {
#     encrypt        = true
#    bucket = "terraform-on-aws-for-ec2"
#    key    = "dev/project1-vpc/terraform.tfstate"
#    region = "us-east-1"

    # Enable during Step-09
    # For State Locking
#    dynamodb_table = "dev-project1-vpc"
#  }
}
resource "aws_s3_bucket" "example123" {
  bucket = "my-tf-test-bucket11123456789"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
