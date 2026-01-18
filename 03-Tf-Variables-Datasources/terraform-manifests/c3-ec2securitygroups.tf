#Security group - SSH traffic
resource "aws_security_group" "vpc-ssh" {
  name = "vpc-ssh"
  description = "VPC SSH"
 
  ingress {
    description = "Allow 22 for SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #list item - []
  }

  egress {
    description = "Allow all ips and ports"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "vpc-ssh"
  }

}

#Security group - Web traffic
resource "aws_security_group" "vpc-Web" {
  name = "vpc-web"
  description = "VPC Web"
 
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }  
  egress {
    description = "Allow all ips and ports"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "vpc-ssh"
  }

}