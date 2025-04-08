resource "aws_subnet" "CH5public1" {
  vpc_id                  = aws_vpc.CH5.id
  cidr_block              = "10.40.1.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "CH5-public-Subnet1"
  }
}

resource "aws_subnet" "CH5public2" {
  vpc_id                  = aws_vpc.CH5.id
  cidr_block              = "10.40.2.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = true
  tags = {
    Name = "CH5-public-Subnet2"
  }
}

