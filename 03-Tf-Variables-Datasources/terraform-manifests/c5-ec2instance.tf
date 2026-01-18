resource "aws_instance" "myec2" { 
  ami           = data.aws_ami.amz-linux2.id # datasource
  instance_type = var.instance_type 
  user_data = file("${path.module}/app-install.sh")
  key_name = var.instance_keypair # variable
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-Web.id ] #resource
    tags = {
    "Name" = "EC2 Demo 2"
  }
}