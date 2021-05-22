resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    "Name" = "igw-ruslan"
  }
}

resource "aws_nat_gateway" "ngw" {
  subnet_id = aws_subnet.public-subnet1.id
  allocation_id = aws_eip.eip.id
  tags = {
    "Name" = "ngw-ruslan"
  }
}
resource "aws_eip" "eip" {
  vpc = true
}