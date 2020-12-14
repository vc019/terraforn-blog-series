# Provision private subnets
resource "aws_subnet" "main-private-1" {
  cidr_block = var.CW_PRIVATE_SUBNETS["eu-west-2a"]
  vpc_id = aws_vpc.cw_vpc_1.id
  map_public_ip_on_launch = "false"
  availability_zone = "eu-west-2a"

  tags = {
    Name = var.CW_PRIVATE_SUBNET_NAMES["eu-west-2a"]
  }
}

resource "aws_subnet" "main-private-2" {
  cidr_block = var.CW_PRIVATE_SUBNETS["eu-west-2b"]
  vpc_id = aws_vpc.cw_vpc_1.id
  map_public_ip_on_launch = "false"
  availability_zone = "eu-west-2b"

  tags = {
    Name = var.CW_PRIVATE_SUBNET_NAMES["eu-west-2b"]
  }
}