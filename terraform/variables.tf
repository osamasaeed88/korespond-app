variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "ami_id" {
  default = "ami-08635203447d68380" # Ubuntu 20.04 LTS in ap-south-1
}

variable "instance_type" {
  default = "t2.micro" # Free tier eligible
}

variable "key_name" {
  default = "korespond-keypair"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
  default     = "mydatabase"
}

variable "username" {
  description = "The username for the database"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "The password for the database"
  type        = string
  default     = "password"
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The parameter group to associate with the RDS instance"
  type        = string
  default     = "default.mysql8.0"
}

variable "port" {
  description = "The port on which the DB instance accepts connections"
  type        = number
  default     = 3306
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "Instance types for the worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "role_name" {
  description = "Name of the IAM role for the EKS cluster"
  type        = string
}

variable "eks_node_role_name" {
  description = "Name of the IAM role for the EKS worker nodes"
  type        = string
}
