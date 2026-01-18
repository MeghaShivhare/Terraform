# Terraform Outputs

# EC2 Instance Public IP
output "ec2_public_ip" {
  description = "Public IP for EC2 Instance"
  value = aws_instance.myec2.public_ip
}

# EC2 Instance Public DNS
output "ec2_public_dns" {
  description = "Public DNS for EC2 Instance"
  value = aws_instance.myec2.public_dns
}