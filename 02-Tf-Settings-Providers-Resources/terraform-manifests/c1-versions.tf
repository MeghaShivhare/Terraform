# Terraform Block

terraform {
  required_version = "~> 1.14" #allows 1.14.xx and deny 1.15.xx
  required_providers {
    aws = { # the name "aws" here should match the provider block label
        # argument =, block {}
        source = "hashicorp/aws" # primary location for downloading provider
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  # profile = "default" # profile name here
}