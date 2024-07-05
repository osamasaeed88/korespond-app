variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "ami_id" {
  default = "ami-0577a6ec46b349644" # Ubuntu 20.04 LTS in us-west-2
}

variable "instance_type" {
  default = "t2.micro" # Free tier eligible
}

variable "key_name" {
  default = "korespond-keypair"
}

variable "lambda_source_code" {
  default = "modules/lambda/ezyzip.zip"
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
