# Please copy the code below

```
module "rus-vpc" {
  source = "rayslan/vpc/aws"
  version = "specify a version"

  tag-vpc-name     = "string"
  region           = "specify a region"
  cidr_block       = "x.x.x.x/x"
  instance_tenancy = "default / dedicated" # Choose one

  cidr-block-private-subnets = ["x.x.x.x/x", "x.x.x.x/x", "x.x.x.x/x"] #Creates 3 private subnets ( you can not change the number )
  cidr-block-public-subnets  = ["x.x.x.x/x", "x.x.x.x/x", "x.x.x.x/x"] #Creates 3 public subnets ( you can not change the number )

  private-subnet-names = ["name1", "name2", "name3"]
  public-subnet-names  = ["name1", "name2", "name3"]

  private-route-table-name = "string"
  public-route-table-name  = "string"

  igw-name = "string"
  ngw-name = "string"

/*###########################################################################
###########################################################################

#-----------VPC-----------
output "vpc-info" {
    value = aws_vpc.my-vpc
}

#-----------Gateways-----------
output "igw-info" {
    value = aws_internet_gateway.igw
}
output "ngw-info" {
    value = aws_nat_gateway.ngw 
}

#-----------Route Tables-----------
output "private-route-table-info" {
    value = aws_route_table.my-private-route-table
}
output "public-route-table-info" {
    value = aws_route_table.my-public-route-table
}

#-----------Subnets-----------
output "private-subnet1-info" {
    value = aws_subnet.private-subnet1
}
output "private-subnet2-info" {
    value = aws_subnet.private-subnet2
}
output "private-subnet3-info" {
    value = aws_subnet.private-subnet3
}
output "public-subnet1-info" {
    value = aws_subnet.public-subnet1
}
output "public-subnet2-info" {
    value = aws_subnet.public-subnet2
}
output "public-subnet3-info" {
    value = aws_subnet.public-subnet3
}

###########################################################################
##########################################################################*/

}
```
