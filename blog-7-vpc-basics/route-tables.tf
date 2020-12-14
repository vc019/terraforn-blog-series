resource "aws_route_table" "cw_public_route" {
  vpc_id = aws_vpc.cw_vpc_1.id

  route {
    cidr_block = "0.0.0.0/0" # All resources in public subnet are accessible from all internet.
    gateway_id = aws_internet_gateway.cw_ig.id
  }

  tags = {
    Name = "CW-Public-route"
  }
}

resource "aws_route_table" "cw_private_route" {
  vpc_id = aws_vpc.cw_vpc_1.id
  route {
    cidr_block     = "0.0.0.0/0" # Access all internet. But none from internet.
    nat_gateway_id = aws_nat_gateway.cw-nat-gateway.id
  }

  tags = {
    Name = "CW-Private-route"
  }
}