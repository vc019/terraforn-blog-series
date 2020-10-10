resource "aws_instance" "blog6-ec2" {
  ami = lookup(var.cw_ami, "eu-west-2") # Variable added.
  instance_type = var.cw_instance_type # Variable added.
  key_name = aws_key_pair.my_blog_key.key_name
  security_groups = ["cw-blog-6-sg"]

  provisioner "file" {
    source = "conf/my-conf.ini"
    destination = "/home/ec2-user/my-conf.ini"
  }

  connection {
    host = self.public_ip
    type = "ssh"
    user = "ec2-user"
    private_key = file("ssh-keys/myblog-key")
  }
}

output "myIp" {
  value = aws_instance.blog6-ec2.public_ip
}
