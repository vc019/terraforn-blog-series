# Any resources in this security group are only accessible via ssh
resource "aws_security_group" "cw_public_sg" {
  name = var.CW_PUBLIC_SG
  vpc_id = aws_vpc.cw_vpc_1.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.CW_SG_PUBLIC_CIDR_BLOCKS
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Any resources in this security group are only accessible via public subnet main-public-1 subnet IP address
# only SSH access is allowed.
resource "aws_security_group" "cw_private_sg" {
  name = var.CW_PRIVATE_SG
  vpc_id = aws_vpc.cw_vpc_1.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_groups = [aws_security_group.cw_public_sg.id]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}