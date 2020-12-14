# public subnets
resource "aws_subnet" "main-public-1" {
  cidr_block = var.CW_PUBLIC_SUBNETS["eu-west-2a"]
  vpc_id = aws_vpc.cw_vpc_1.id
  map_public_ip_on_launch = "true"
  availability_zone = "eu-west-2a"

  tags = {
    Name = var.CW_PUBLIC_SUBNET_NAMES["eu-west-2a"]
  }
}

resource "aws_subnet" "main-public-2" {
  cidr_block = var.CW_PUBLIC_SUBNETS["eu-west-2b"]
  vpc_id = aws_vpc.cw_vpc_1.id
  map_public_ip_on_launch = "true"
  availability_zone = "eu-west-2b"

  tags = {
    Name = var.CW_PUBLIC_SUBNET_NAMES["eu-west-2b"]
  }
}