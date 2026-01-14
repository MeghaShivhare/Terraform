# Terraform Block

terraform {
  required_version = "~> 1.14" #allows 1.14.xx and deny 1.15.xx
  required_providers {
    aws = { # the name "aws" here should match the provider block label
        # argument =, block {}
        source = "hashicorp/aws"
        version = "3.34.0"
    }
  }
}