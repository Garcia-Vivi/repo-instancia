variable "ec2_name" {
  type = string
  description = "EC2 Name"
  default = "instancia-vivi"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
  default = "vpc-vivi"
}

variable "subnet_name" {
  type = string
  description = "Subnet Name"
  default = "subnet-vivi"
}

variable "gateway_name" {
  type = string
  description = "Gateway Name"
  default = "gateway-vivi"
}

variable "sg_ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80, 21, 22, 443]
}

variable "sg_egress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80, 21, 22, 443]
}
