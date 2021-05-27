resource "aws_vpc" "my-vpc" {

  tags = {
    "Name" = var.tag-vpc-name #This goes to module
  }
  cidr_block       = var.cidr_block       #This goes to module
  instance_tenancy = var.instance_tenancy #This goes to module

}