resource "aws_subnet" "pub-sub-1" {
  vpc_id            = aws_vpc.ieee_vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "ieee-pub-subnet-1"
  }
}

resource "aws_subnet" "pvt-sub-1" {
  vpc_id            = aws_vpc.ieee_vpc.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "ieee-pvt-subnet-1"
  }
}
