variable "ip_addresses" {
  default = "0.0.0.0/0"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 9090, 80]
}

variable "egress_port" {
  description = "Port open to allow outbound connection"
  default     = 0
}

variable "vpc_id" {
  description = "VPC ID for Security Group"