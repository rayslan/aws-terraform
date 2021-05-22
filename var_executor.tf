variable "region" {}
variable "cidr_block" {}
variable "tag-vpc-name" {}
variable "instance_tenancy" {
  type    = string
  default = "default"
}
variable "cidr-block-private-subnets" {
  type = list(string)
}
variable "cidr-block-public-subnets" {
  type = list(string)
}

variable "private-subnet-names" {
  type = list(string)
}

variable "public-subnet-names" {
  type = list(string)
}

variable "private-route-table-name" {}
variable "public-route-table-name" {}