provider "aws" {
  region = "eu-west-2"
}

resource "aws_security_group" "cw_sg_ssh" {
  name = "cw-blog-2-sg-using-terraform"

  #Incoming traffic
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["11.XX.XX.XX/32"] # replace with your ip address
  }

  #Outgoing traffic
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
