#-----------------------Private-route-table------------------------
resource "aws_route_table" "my-private-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.ngw.id 
  }

  tags = {
      Name = var.private-route-table-name #This goes to module
  }

}
resource "aws_route_table_association" "private-route-table-association1" {
  route_table_id = aws_route_table.my-private-route-table.id
  subnet_id = aws_subnet.private-subnet1.id
}
resource "aws_route_table_association" "private-route-table-association2" {
  route_table_id = aws_route_table.my-private-route-table.id
  subnet_id = aws_subnet.private-subnet2.id
}
resource "aws_route_table_association" "private-route-table-association3" {
  route_table_id = aws_route_table.my-private-route-table.id
  subnet_id = aws_subnet.private-subnet3.id
}

#-----------------------Public-route-table------------------------
resource "aws_route_table" "my-public-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route  {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id 
  }

  tags = {
      Name = var.public-route-table-name #This goes to module
  }

}
resource "aws_route_table_association" "public-route-table-association1" {
  route_table_id = aws_route_table.my-public-route-table.id
  
  subnet_id = aws_subnet.public-subnet1.id
}
resource "aws_route_table_association" "public-route-table-association2" {
  route_table_id = aws_route_table.my-public-route-table.id
  
  subnet_id = aws_subnet.public-subnet2.id
}
resource "aws_route_table_association" "public-route-table-association3" {
  route_table_id = aws_route_table.my-public-route-table.id
  
  subnet_id = aws_subnet.public-subnet3.id
  
}





