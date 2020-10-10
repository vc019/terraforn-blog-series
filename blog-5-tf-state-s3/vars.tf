variable "cw_instance_type" {
  type = string
  default = "t2.micro"
  description = "Type of AWS instance"
}

variable "cw_ingress_cidr_block" {
  type = list
  default = ["XX.XX.XX.XX/32"]
  description = "List of IP ranges for incoming traffic"
}

variable "cw_ami" {
  type = map
  default = {
    "eu-west-1": "ami-03122be15033aa7ec"
    "eu-west-2": "ami-0fc841be1f929d7d1"
    "us-east-1": "ami-00f6a0c18edb19300"
  }
}