#AZ
data "aws_availability_zone" "my_az" {
  filter {
    name = "opt-in-status"
    values = [ "opt-in-not-required" ]
  }
}

resource "aws_instance" "myec2" { 
  ami           = data.aws_ami.amz-linux2.id # datasource
  instance_type = var.instance_type 

  #instance_type = var.instance_type_list[1] # variable with list and index
  #instance_type = var.instance_type_map["dev"] # variable with map and key

  user_data = file("${path.module}/app-install.sh")
  key_name = var.instance_keypair # variable
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-Web.id ] #resource

  # create instance is all available zones
  for_each = toset(data.aws_availability_zone.my_az.name)
  availability_zone = each.key

    tags = {
    "Name" = "For-Each-${each.value}"
  }
}