output "eks_role_arn" {
  value = aws_iam_role.eks_role.arn
}

output "ec2_ecr_push_role_arn" {
  value = aws_iam_role.ec2_ecr_push_role.arn
}

output "eks_ecr_pull_role_arn" {
  value = aws_iam_role.eks_ecr_pull_role.arn
}