resource "aws_instance" "blog3-ec2" {
  ami = "ami-0fc841be1f929d7d1"
  instance_type = "t2.micro"
  key_name = aws_key_pair.my_blog_key.key_name
  security_groups = ["cw-blog-3-sg-using-terraform"]
}
