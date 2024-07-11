output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "jenkins_server_public_ip" {
  value = module.ec2.jenkins_server_public_ip
}

output "jenkins_server_id" {
  value = module.ec2.jenkins_server_id
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "ecr_repository_url" {
  value = module.ecr.ecr_repository_url
}

output "rds_instance_endpoint" {
  value = module.rds.rds_instance_endpoint
}

output "rds_instance_id" {
  value = module.rds.rds_instance_id
}
