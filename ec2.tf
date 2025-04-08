# EC2 인스턴스 
resource "aws_instance" "CH5-1" {
  ami           = "ami-0a463f27534bdf246"  # 예시로 Amazon Linux 2 AMI (리전마다 다를 수 있음)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.CH5public1.id
  vpc_security_group_ids = [aws_security_group.CH5SG.id]
  associate_public_ip_address = true
  key_name = "0401"
  tags = {
    Name = "EC2-STG1"
  }
}

resource "aws_instance" "CH5-2" {
  ami           = "ami-0a463f27534bdf246"  # 예시로 Amazon Linux 2 AMI (리전마다 다를 수 있음)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.CH5public2.id
  vpc_security_group_ids = [aws_security_group.CH5SG.id]
  associate_public_ip_address = true
  key_name = "0401"
  tags = {
    Name = "EC2-STG2"
  }
}
