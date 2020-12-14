resource "aws_internet_gateway" "cw_ig" {
  vpc_id = aws_vpc.cw_vpc_1.id

  tags = {
    Name = var.CW_IG_NAME
  }
}