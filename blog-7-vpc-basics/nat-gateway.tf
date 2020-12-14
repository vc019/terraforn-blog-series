resource "aws_eip" "cw-nat-elastic-ip" {
  vpc = true

  tags = {
    Name = "Elastic-IP-for-NAT-Gateway"
  }
}

resource "aws_subnet" "main-nat-subnet" {
  cidr_block = var.CW_NAT_SUBNET
  vpc_id = aws_vpc.cw_vpc_1.id
  map_public_ip_on_launch = "true"
  availability_zone = "eu-west-2b"

  tags = {
    Name = var.CW_NAT_SUBNET_NAME
  }
}

resource "aws_nat_gateway" "cw-nat-gateway" {
  allocation_id = aws_eip.cw-nat-elastic-ip.id
  subnet_id = aws_subnet.main-nat-subnet.id
  depends_on = [aws_internet_gateway.cw_ig]

  tags = {
    Name = var.CW_NAT_NAME
  }
}