module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}

module "ec2" {
  source      = "./modules/ec2"
  ami_id      = var.ami_id
  instance_type = var.instance_type
  key_name    = var.key_name
  subnet_id   = module.vpc.subnet_ids[0]
  vpc_id      = module.vpc.vpc_id
}

module "ecr" {
  source = "./modules/ecr"
}

module "eks" {
  source = "./modules/eks"
  subnet_ids = module.vpc.subnet_ids
  cluster_role_arn = module.iam.eks_role_arn
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source      = "./modules/lambda"
  source_code = var.lambda_source_code
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
  subnet_ids        = module.vpc.subnet_ids
  vpc_id            = module.vpc.vpc_id
  port              = var.port
}
