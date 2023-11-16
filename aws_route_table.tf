resource "aws_route_table" "table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }
}

resource "aws_route_table_association" "table_association" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.table.id
}