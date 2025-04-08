resource "aws_vpc" "CH5" {
  cidr_block = "10.40.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "CH5-VPC"
  }
}


