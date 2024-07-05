variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0577a6ec46b349644" # Ubuntu 20.04 LTS in us-west-2
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default     = "t2.micro" # Free tier eligible
}

variable "key_name" {
  description = "The key name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to deploy the instance"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}
