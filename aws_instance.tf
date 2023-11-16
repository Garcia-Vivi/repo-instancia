resource "aws_instance" "instancia" {
  ami           = "ami-0a695f0d95cefc163"
  instance_type = "t2.micro"
  key_name = "minhas-chaves"

  network_interface {
    network_interface_id = aws_network_interface.vivian_net_interface.id
    device_index         = 0
  }

  user_data = <<-EOF
                #!/bin/bash

                sudo apt update
                sudo apt install -y apache2
                sudo systemctl start apache2
                sudo systemctl enable apache2

                EOF

  tags = {
    Name = var.ec2_name
    Environment = "MyEnv"
  }
}