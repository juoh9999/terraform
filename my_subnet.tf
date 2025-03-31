
resource "aws_subnet" "my_subnet" {
  vpc_id    = aws_vpc.my_vpc.id
  cidr_block    = "192.168.1.0/24"
  availability_zone    = "ap-northeast-2a"
  map_public_ip_on_launch  = true
  tags = {
    Name = "my-subnet"
  }
}

