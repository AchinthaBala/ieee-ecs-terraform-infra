resource "aws_eip" "ieee_nat_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "ieee_nat" {
  allocation_id = aws_eip.ieee_nat_eip.id
  subnet_id     = aws_subnet.pub-sub-1.id

  tags = {
    Name = "my-nat-ieee"
  }

  depends_on = [aws_internet_gateway.ieee_igw]
}
