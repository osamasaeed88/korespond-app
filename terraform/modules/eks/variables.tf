variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "korespond-cluster"
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs"
  type        = list(string)
}

variable "eks_node_ami" {
  description = "The AMI ID for the EKS nodes"
  type        = string
  default     = "ami-0a54c984b9f908c81"
}

variable "eks_node_instance_type" {
  description = "The instance type for the EKS nodes"
  type        = string
  default     = "t3.medium"
}

variable "min_size" {
  description = "The minimum size of the auto-scaling group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum size of the auto-scaling group"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "The desired capacity of the auto-scaling group"
  type        = number
  default     = 2
}

variable "key_name" {
  description = "The SSH key name"
  type        = string
}
