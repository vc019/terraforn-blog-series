resource "aws_instance" "cw_pub_instance" {
  ami = "ami-0fc841be1f929d7d1"
  instance_type = var.CW_INSTANCE_TYPE
  subnet_id = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.cw_public_sg.id]
  key_name = aws_key_pair.my_blog_key.key_name

  tags = {
    Name = "CW-Public-instance"
  }
}

resource "aws_instance" "cw_pvt_instance" {
  ami = "ami-0fc841be1f929d7d1"
  instance_type = var.CW_INSTANCE_TYPE
  subnet_id = aws_subnet.main-private-1.id
  key_name = aws_key_pair.my_blog_key.key_name
  vpc_security_group_ids = [aws_security_group.cw_private_sg.id]

  tags = {
    Name = "CW-Private-instance"
  }
}


output "cw_ec2_pub_instance" {
  value = aws_instance.cw_pub_instance.public_ip
}