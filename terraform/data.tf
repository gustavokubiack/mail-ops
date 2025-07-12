data "aws_eks_cluster_auth" "mail" {
  name = aws_eks_cluster.mail.name
}
