resource "aws_security_group" "ssh_sg" {
  name = "allow-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # for testing only
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "tf-ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  tags = {
    Name = "tf-ec2"
  }
}
