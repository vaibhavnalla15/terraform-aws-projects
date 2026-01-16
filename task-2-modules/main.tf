# This is main root module file, it connect to other modules vpc and ec2 via module blocks

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}

module "ec2" {
  source = "./modules/ec2"

  vpc_id         = module.vpc.vpc_id
  subnet_id      = module.vpc.subnet_id
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  allowed_ssh_ip = var.allowed_ssh_ip
  key_name       = var.key_name
}