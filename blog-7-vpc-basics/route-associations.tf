resource "aws_route_table_association" "cw-main-public-1-ra" {
  route_table_id = aws_route_table.cw_public_route.id
  subnet_id = aws_subnet.main-public-1.id
}

resource "aws_route_table_association" "cw-main-public-2-ra" {
  route_table_id = aws_route_table.cw_public_route.id
  subnet_id = aws_subnet.main-public-2.id
}

resource "aws_route_table_association" "cw-main-private-1-ra" {
  route_table_id = aws_route_table.cw_private_route.id
  subnet_id = aws_subnet.main-private-1.id
}

resource "aws_route_table_association" "cw-main-private-2-ra" {
  route_table_id = aws_route_table.cw_private_route.id
  subnet_id = aws_subnet.main-private-2.id
}
