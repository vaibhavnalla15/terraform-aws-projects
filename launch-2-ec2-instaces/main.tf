resource "aws_instance" "tf_ec2_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "tf_ec2_instance_${count.index + 1}"
  }
}

