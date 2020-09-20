resource "aws_instance" "blog4-ec2" {
  ami = lookup(var.cw_ami, "eu-west-2") # Variable added.
  instance_type = var.cw_instance_type # Variable added.
  key_name = aws_key_pair.my_blog_key.key_name
  security_groups = ["cw-blog-3-sg-using-terraform"]
}
