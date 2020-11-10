#Associate the Route Table with the Subnet
resource "aws_route_table_association" "webserver_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.webserver_route_table.id
} 
resource "aws_route_table_association" "private_subnet1_association2" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_subnet1_route_table.id
} 
resource "aws_route_table_association" "private_subnet2_association" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_subnet2_route_table.id
}
resource "aws_route_table_association" "toolserver_association" {
  subnet_id      = aws_subnet.Toolserver_subnet.id
  route_table_id = aws_route_table.toolserver_route_table.id
} # end resource

#Create the Internet Access
resource "aws_route" "Webserver_internet_access" {
  route_table_id         = aws_route_table.webserver_route_table.id
  destination_cidr_block = var.destinationCIDRblock
  gateway_id             = aws_internet_gateway.My_VPC_GW.id
}