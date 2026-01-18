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
  default = "t2.micro"
}

#Instance key pair
variable "instance_keypair" {
  description = "AWS EC2 key pair to be associated with Instance"
  type = string
  default = "terraform-key.ppk"
}