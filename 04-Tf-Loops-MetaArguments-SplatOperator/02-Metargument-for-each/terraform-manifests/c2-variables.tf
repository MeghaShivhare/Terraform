#Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# EC2 instance type
variable "instance_type" {
  description = "Ec2 Instance type"
  type = string
  default = "t3.micro"
}

#Instance key pair
variable "instance_keypair" {
  description = "AWS EC2 key pair to be associated with Instance"
  type = string
  default = "terraform-key"
}

variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string)
  default = [ "t3.micro","t3.small" ]
}

variable "instance_type_map" {
  description = "EC2 Instance"
  type = map(string)
  default = {
    "dev" = "t3.micro",
    "qa" = "t3.small"
    "prod" = "t3.large"
  }
  
}