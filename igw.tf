resource "aws_internet_gateway" "ieee_igw" {
  vpc_id = aws_vpc.ieee_vpc.id

  tags = {
    Name = "my-gateway-ieee"
  }
}
