output "ec2_public_ip" {
    value = aws_instance.tf-ec2.public_ip
}

output "vpc_id" {
  value = aws_vpc.tf-vpc.id
}

output "subnet_id" {
  value = aws_subnet.subnet-1.id
}

output "security_group_id" {
  value = aws_security_group.sg.id
}