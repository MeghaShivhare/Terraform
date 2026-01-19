
# EC2 Instance Public IP with TOSET
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  #value = aws_instance.myec2vm[*].public_ip  # Latest Splat
  value = toset([
      for myec2 in aws_instance.myec2 : myec2.public_ip
    ])  
}

# EC2 Instance Public DNS with TOSET
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = toset([
      for myec2 in aws_instance.myec2 : myec2.public_dns
    ])    
}

# EC2 Instance Public DNS with MAPS
output "instance_publicdns2" {
  value = tomap({
    for s, myec2 in aws_instance.myec2 : s => myec2.public_dns
    # S intends to be a subnet ID
  })
}