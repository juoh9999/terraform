resource "aws_network_acl" "my_nacl" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    rule_no    = 100
    protocol   = "6"
    action     = "allow"  # ✅ 올바른 속성명
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }

  egress {
    rule_no    = 100
    protocol   = "6"
    action     = "allow"  # ✅ 올바른 속성명
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }

  tags = {
    Name = "my-nacl"
  }
}

