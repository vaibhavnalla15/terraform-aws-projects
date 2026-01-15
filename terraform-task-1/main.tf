# Creating Resources 
# 1. Networking Resources: VPC, Subnet, Internet Gateway, Route Table
resource "aws_vpc" "tf-vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "tf-vpc"
  }
}

# 2. Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.tf-vpc.id

  tags = {
    Name = "tf-igw"
  }
}

# 3. Subnet
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "tf-subnet-1"
  }
}

# 4. Route Table
resource "aws_route_table" "rbt" {
  vpc_id = aws_vpc.tf-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "tf-route-table"
  }
}

# 5. Route Table Association 
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.rbt.id
}

# 6. Security Group
resource "aws_security_group" "sg" {
  name        = "tf-security-group"
  description = "Allow inbound traffic"
  vpc_id      = aws_vpc.tf-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_ip] # Allow SSH from specified IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }

  tags = {
    Name = "tf-security-group"
  }
}

# 7. EC2 Instance
resource "aws_instance" "tf-ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.subnet-1.id
  security_groups = [aws_security_group.sg.id]
  key_name        = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "tf-ec2-instance"
  }
}

