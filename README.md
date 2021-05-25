# aws-terraform
...
module "name" {

source = "provide a source here"

region = "specify a region"
cidr_block = "x.x.x.x/x"
tag-vpc-name = "string"
instance_tenancy = "default / dedicated"
cidr-block-private-subnets = ["x.x.x.x/x", "x.x.x.x/x", "x.x.x.x/x"] #Creates 3 private subnets

cidr-block-public-subnets = ["x.x.x.x/x", "x.x.x.x/x", "x.x.x.x/x"] #Creates 3 public subnets

private-subnet-names = ["x.x.x.x/x", "x.x.x.x/x", "x.x.x.x/x"]

public-subnet-names = ["x.x.x.x/x", "x.x.x.x/x", "x.x.x.x/x"]

private-route-table-name = "string"
public-route-table-name = "string"
igw-name = "string"
ngw-name = "string"


}
...