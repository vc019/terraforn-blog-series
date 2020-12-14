variable "CW_REGION" {
  default = "eu-west-2"
}

variable "CW_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "CW_VPC_NAME" {
  default = "cw-vpc-1"
}

variable "CW_VPC_CIDR_BLOCK" {
  default = "10.0.0.0/16"
}

variable "CW_PUBLIC_SUBNETS" {
  type = map
  default = {
    "eu-west-2a": "10.0.1.0/24"
    "eu-west-2b": "10.0.2.0/24"
  }
}

variable "CW_PUBLIC_SUBNET_NAMES" {
  type = map
  default = {
    "eu-west-2a": "main-public-1"
    "eu-west-2b": "main-public-2"
  }
}


variable "CW_PRIVATE_SUBNETS" {
  type = map
  default = {
    "eu-west-2a": "10.0.3.0/24"
    "eu-west-2b": "10.0.4.0/24"
  }
}

variable "CW_PRIVATE_SUBNET_NAMES" {
  type = map
  default = {
    "eu-west-2a": "main-private-1"
    "eu-west-2b": "main-private-2"
  }
}

variable "CW_NAT_SUBNET" {
  default = "10.0.5.0/24"
}

variable "CW_NAT_SUBNET_NAME" {
  default = "CW NAT GATEWAY SUBNET"
}

variable "CW_NAT_NAME" {
  default = "CW NAT GATEWAY"
}

variable "CW_IG_NAME" {
  default = "CW-BLOG-IG"
}

variable "CW_PUBLIC_SG" {
  default = "CW_PUBLIC_SG"
}

variable "CW_SG_PUBLIC_CIDR_BLOCKS" {
  type = list(string)
  # Update CIDR blocks as per your requirements.
  default = ["30.50.160.170/32"]
}

variable "CW_PRIVATE_SG" {
  default = "CW_PRIVATE_SG"
}

