resource "aws_instance" "blog6-ec2" {
  ami = lookup(var.cw_ami, "eu-west-2") # Variable added.
  instance_type = var.cw_instance_type # Variable added.
  key_name = aws_key_pair.my_blog_key.key_name
  security_groups = ["cw-blog-6-sg"]

  provisioner "local-exec" {
    command = "./scripts/my-local-script.sh ${aws_instance.blog6-ec2.public_ip}"
  }
}

output "myIp" {
  value = aws_instance.blog6-ec2.public_ip
}
