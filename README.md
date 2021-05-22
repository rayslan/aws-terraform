# aws-terraform
...
module "name" {

source = "provide a source here"

region = "string"
cidr_block = "x.x.x.x/x"
tag-vpc-name = "string"
instance_tenancy = "default / dedicated"
cidr-block-private-subnets = ["x.x.x.x/x"]

cidr-block-public-subnets = ["x.x.x.x/x"]

private-subnet-names = ["string"]

public-subnet-names = ["string"]

private-route-table-name = "string"
public-route-table-name = "string"









}