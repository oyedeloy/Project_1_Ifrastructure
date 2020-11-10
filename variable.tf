# variables.tf
variable "My_VPC" {
  default = "My_VPC"
}
variable "access_key" {
  default = true
}
variable "secret_key" {
  default = true
}
variable "region" {
  default = "us-east-2"
}
variable "availabilityZone" {
  default = "us-east-2a"
}
variable "availabilityZone2" {
  default = "us-east-2b"
}
variable "instanceTenancy" {
  default = "default"
}
variable "dnsSupport" {
  default = true
}
variable "dnsHostNames" {
  default = true
}
variable "vpcCIDRblock" {
  default = "10.7.0.0/16"
}
variable "public_subnetCIDRblock" {
  default = "10.7.1.0/24"
}
variable "subnetCIDRblock_private1" {
  default = "10.7.2.0/24"
}
variable "subnetCIDRblock2" {
  default = "10.7.3.0/24"
}
variable "subnetCIDRblock_tools" {
  default = "10.7.4.0/24"
}
variable "subnetCIDRblock_private2" {
  default = "10.7.3.0/24"
}
variable "destinationCIDRblock" {
  default = "0.0.0.0/0"
}
variable "ingressCIDRblock" {
  type    = list
  default = ["0.0.0.0/0"]
}
variable "egressCIDRblock" {
  type    = list
  default = ["0.0.0.0/0"]
}
variable "mapPublicIP" {
  default = true
}

# end of variables