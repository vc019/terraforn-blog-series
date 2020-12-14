resource "aws_vpc" "cw_vpc_1" {
  cidr_block = var.CW_VPC_CIDR_BLOCK
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  enable_classiclink = "false"

  tags = {
    Name = var.CW_VPC_NAME
  }
}