resource "aws_network_interface" "vivian_net_interface" {
  subnet_id   = aws_subnet.subnet.id
  private_ips = ["172.16.10.100"]
  security_groups = [aws_security_group.demo_sg.id]

  tags = {
    Name = "primary_network_interface"
    Environment = "MyEnv"
  }
}