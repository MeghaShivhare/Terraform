resource "aws_instance" "myec2" { # lables aws_instance - resource type and ec2demo - resource local name
  ami           = "ami-068c0051b15cdb816" # resource-arguments
  instance_type = "t2.micro" 
}