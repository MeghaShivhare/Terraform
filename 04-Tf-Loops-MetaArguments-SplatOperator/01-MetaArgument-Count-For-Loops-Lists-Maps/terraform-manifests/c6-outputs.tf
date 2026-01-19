# Terraform Outputs

# For loop
output "for_output_list" {
  description = "For Loop with List"
  value = [for instance in aws_instance.myec2: instance.public_dns]
}

output "for_output_map1" {
  description = "For loop with Map"
  value = {
    for instance in aws_instance.myec2 : instance.id => instance.public_ip
  }
}

output "for_output_map2" {
  description = "For loop with Map - Advanced"
  value = {
    for c, instance in aws_instance.myec2: c => instance.public_dns
  }
}

output "splat_instance" {
  description = "Splat Operator"
  value = aws_instance.myec2[*].public_dns
}