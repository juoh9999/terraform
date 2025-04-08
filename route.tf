#인터넷게이트웨이 생성
resource "aws_internet_gateway" "CH5IGW" {
  vpc_id = aws_vpc.CH5.id
  tags = {
    Name = "CH5-IGW"
  }
}


# My Public Route Table 생성
resource "aws_route_table" "CH5public" {
  vpc_id = aws_vpc.CH5.id
  tags = {
    Name = "CH5-PublicRT"
  }
}

resource "aws_route" "CH5public" {
  route_table_id         = aws_route_table.CH5public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.CH5IGW.id
}


# Public Subnet에 Public Route Table 연결
resource "aws_route_table_association" "Ch5assoc1" {
  subnet_id      = aws_subnet.CH5public1.id
  route_table_id = aws_route_table.CH5public.id
}

# Public Subnet에 Public Route Table 연결
resource "aws_route_table_association" "Ch5assoc2" {
  subnet_id      = aws_subnet.CH5public2.id
  route_table_id = aws_route_table.CH5public.id
}

