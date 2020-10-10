resource "aws_security_group" "cw_sg_ssh" {
  name = "cw-blog-6-sg"

  #Incoming traffic
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cw_ingress_cidr_block  # Variable added.
  }

  #Outgoing traffic
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}