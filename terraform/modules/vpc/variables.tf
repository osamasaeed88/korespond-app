variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "A list of private subnet CIDR blocks"
  type        = list(string)
}
