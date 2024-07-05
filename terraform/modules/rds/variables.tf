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

variable "subnet_ids" {
  description = "A list of subnet IDs in the VPC"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "port" {
  description = "The port on which the DB instance accepts connections"
  type        = number
  default     = 3306
}
