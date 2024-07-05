output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "jenkins_server_public_ip" {
  value = module.ec2.jenkins_server_public_ip
}

output "jenkins_server_id" {
  value = module.ec2.jenkins_server_id
}

output "ecr_repository_url" {
  value = module.ecr.ecr_repository_url
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "eks_cluster_certificate_authority" {
  value = module.eks.eks_cluster_certificate_authority
}

output "terraform_user_arn" {
  value = module.iam.terraform_user_arn
}

output "eks_role_arn" {
  value = module.iam.eks_role_arn
}

output "lambda_function_arn" {
  value = module.lambda.lambda_function_arn
}

output "rds_instance_endpoint" {
  value = module.rds.rds_instance_endpoint
}

output "rds_instance_id" {
  value = module.rds.rds_instance_id
}
