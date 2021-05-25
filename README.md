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

}
```
