resource "aws_instance" "cw-blog5-ec2" {
  ami = lookup(var.cw_ami, "eu-west-2")
  instance_type = var.cw_instance_type
  key_name = aws_key_pair.my_blog_key.key_name
  security_groups = ["cw-blog-5-sg"]
}
