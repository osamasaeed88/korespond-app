output "terraform_user_arn" {
  value = aws_iam_user.terraform_user.arn
}

output "eks_role_arn" {
  value = aws_iam_role.eks_role.arn
}
