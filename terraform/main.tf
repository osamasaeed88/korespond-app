module "vpc" {
  source                      = "./modules/vpc"
  vpc_cidr_block              = "10.0.0.0/16"
  public_subnet_cidr_blocks   = ["10.0.10.0/24", "10.0.20.0/24"]
  private_subnet_cidr_blocks  = ["10.0.30.0/24", "10.0.40.0/24"]
}

module "ec2" {
  source      = "./modules/ec2"
  ami_id      = var.ami_id
  instance_type = var.instance_type
  key_name    = var.key_name
  subnet_id   = module.vpc.public_subnet_ids[0]
  vpc_id      = module.vpc.vpc_id
}

module "eks" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
  key_name  = var.key_name
}

module "ecr" {
  source = "./modules/ecr"
}

module "iam" {
  source = "./modules/iam"
}

module "rds" {
  source            = "./modules/rds"
  allocated_storage = var.allocated_storage
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  db_name           = var.db_name
  username          = var.username
  password          = var.password
  parameter_group_name = var.parameter_group_name
  subnet_ids        = module.vpc.private_subnet_ids
  vpc_id            = module.vpc.vpc_id
  port              = var.port
}
