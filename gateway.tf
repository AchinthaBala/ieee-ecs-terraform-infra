resource "aws_internet_gateway" "ieee_igw" {
  vpc_id = aws_vpc.ieee_vpc.id

  tags = {
    Name = "my-gateway-ieee"
  }
}

resource "aws_eip" "nat_gateway" {
  domain = "vpc"

  tags = {
    Name = "my-nat-iee-eip"
  }
}

resource "aws_nat_gateway" "ieee_nat" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id     = aws_subnet.pub-sub-1.id

  tags = {
    Name = "my-nat-iee"
  }

  depends_on = [aws_internet_gateway.ieee_igw]
}
