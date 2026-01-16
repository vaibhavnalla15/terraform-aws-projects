variable "subnet_id" {
  description = "From VPC module"
  type        = string
}

variable "vpc_id" {
  description = "From VPC module"
  type        = string
}

variable "instance_type" {
  description = "instance_type"
  type        = string
}

variable "allowed_ssh_ip" {
  description = "allowed_ssh_ip"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
}