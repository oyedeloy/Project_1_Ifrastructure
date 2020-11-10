resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.My_VPC.id
  cidr_block              = var.public_subnetCIDRblock
  map_public_ip_on_launch = false
  availability_zone       = var.availabilityZone
  tags = {
    Name = "webserver_public_subnet"
  }
}
resource "aws_subnet" "private_subnet1" {
  vpc_id                  = aws_vpc.My_VPC.id
  cidr_block              = var.subnetCIDRblock_private1
  map_public_ip_on_launch = false
  availability_zone       = var.availabilityZone2
  tags = {
    Name = "private_subnet1"
  }
}
resource "aws_subnet" "private_subnet2" {
  vpc_id                  = aws_vpc.My_VPC.id
  cidr_block              = var.subnetCIDRblock_private2
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
  tags = {
    Name = "private_subnet2"
  }
}
resource "aws_subnet" "Toolserver_subnet" {
  vpc_id                  = aws_vpc.My_VPC.id
  cidr_block              = var.subnetCIDRblock_tools
  map_public_ip_on_launch = var.mapPublicIP
  availability_zone       = var.availabilityZone
  tags = {
    Name = "Toolserver_subnet"
  }
}