output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.tf_vpc.id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.subnet_1.id
}

