provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "cw-my-ec2" {
    ami = "ami-0fc841be1f929d7d1"
    instance_type = "t2.micro"
}
