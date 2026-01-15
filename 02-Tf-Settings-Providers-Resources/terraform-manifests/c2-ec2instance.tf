resource "aws_instance" "myec2" { # lables aws_instance - resource type and ec2demo - resource local name
  ami           = "ami-068c0051b15cdb816" # resource-arguments
  instance_type = "t2.micro" 
  user_data = file("${path.module}/app-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }

  # Argument Reference - what you provide as input - ex ami-id
  # Attribute Reference  are output for ex instance id that you will get in return after execution
}