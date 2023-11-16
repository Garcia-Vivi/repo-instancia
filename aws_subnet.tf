resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true

  depends_on = [aws_internet_gateway.gateway]

  tags = {
    Name = var.subnet_name
    Environment = "MyEnv"
  }
}