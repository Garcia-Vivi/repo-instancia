resource "aws_eip" "ip_publico" {
  vpc = true

  instance                  = aws_instance.instancia.id
  associate_with_private_ip = "172.16.10.100"
  depends_on                = [aws_internet_gateway.gateway]
}

# resource "aws_eip_association" "eip_association" {
#   instance_id   = aws_instance.instancia.id
#   allocation_id = aws_eip.ip_publico.id
# }