#Select AWS Region
variable "region" {
  default = "us-east-1"
}

This will Prompt you for AWS Access and Secret Key
variable "aws_access_key{}"
varibale "aws_secret_key{}"

# To hard code AWS Access and Secret Key comment above and uncomment below
#variable "aws_access_key" {
#  default = ""
#  description = "User aws access key"
#}
#variable "aws_secret_key" {
#  default = ""
#  description = "User aws secret key"
#}

# Main VPC Network
variable "vpc-ipv4-cidr" {
  default = "172.31.0.0/16"
  description = "The VPC ipv4 CDIR"
}
# VPC Subnets x 3 for VMC
variable "vpc-subnet-cidr-a" {
  default = "172.31.0.0/20"
  description = "The CDIR of the subnet"
}

variable "vpc-subnet-cidr-b" {
  default = "172.31.16.0/20"
  description = "The CDIR of the subnet"
}

variable "vpc-subnet-cidr-c" {
  default = "172.31.32.0/20"
  description = "The CDIR of the subnet"
}