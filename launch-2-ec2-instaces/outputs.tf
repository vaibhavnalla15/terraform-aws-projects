output "public_ip_addresses" {
  description = "The public IP addresses of the EC2 instances"
  value       = aws_instance.tf_ec2_instance.*.public_ip
}

output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.tf_ec2_instance.*.id
}