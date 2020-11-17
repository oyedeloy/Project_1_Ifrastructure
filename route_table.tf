# Create the Route Table
resource "aws_route_table" "private_subnet1_route_table" {
  vpc_id = aws_vpc.My_VPC.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
  }
  tags = {
    Name = "private_subnet1_Route_Table"
  }
}
resource "aws_route_table" "private_subnet2_route_table" {
  vpc_id = aws_vpc.My_VPC.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
  }
  tags = {
    Name = "private_subnet2_Route_Table"
  }
}
resource "aws_route_table" "webserver_route_table" {
  vpc_id = aws_vpc.My_VPC.id
  tags = {
    Name = "webserver_Route_Table"
  }
}
resource "aws_route_table" "toolserver_route_table" {
  vpc_id = aws_vpc.My_VPC.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
  }
  tags = {
    Name = "tool_server_Route_Table"
  }
} # end resource