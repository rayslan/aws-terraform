#   --------------------Private-Subnets--------------------
resource "aws_subnet" "private-subnet1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.cidr-block-private-subnets[0] #This goes to module
  map_public_ip_on_launch = true

  tags = {
    Name = var.private-subnet-names[0] #This goes to module
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.cidr-block-private-subnets[1] #This goes to module
  map_public_ip_on_launch = true

  tags = {
    Name = var.private-subnet-names[1] #This goes to module
  }
}

resource "aws_subnet" "private-subnet3" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.cidr-block-private-subnets[2] #This goes to module
  map_public_ip_on_launch = true

  tags = {
    Name = var.private-subnet-names[2] #This goes to module
  }
}


#   --------------------Public-Subnets--------------------
resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.cidr-block-public-subnets[0] #This goes to module
  map_public_ip_on_launch = true

  tags = {
    Name = var.public-subnet-names[0] #This goes to module
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.cidr-block-public-subnets[1] #This goes to module
  map_public_ip_on_launch = true

  tags = {
    Name = var.public-subnet-names[1] #This goes to module
  }
}

resource "aws_subnet" "public-subnet3" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.cidr-block-public-subnets[2] #This goes to module
  map_public_ip_on_launch = true

  tags = {
    Name = var.public-subnet-names[2] #This goes to module
  }
}