output "cluster_name" {
  value = aws_eks_cluster.mail.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.mail.endpoint
}

output "kubeconfig" {
  value = <<EOT
To configure kubectl, run:
aws eks --region ${var.region} update-kubeconfig --name ${aws_eks_cluster.mail.name} --profile pessoal
EOT
}

output "argocd_server_url" {
  value = "http://${helm_release.argocd.name}.${helm_release.argocd.namespace}.svc.cluster.local"
}

output "rds_endpoint" {
  description = "Endpoint da instância RDS PostgreSQL"
  value       = aws_db_instance.postgres.endpoint
}

output "rds_connection_url" {
  description = "URL de conexão para o PostgreSQL"
  value       = "postgresql://${aws_db_instance.postgres.username}:${aws_db_instance.postgres.password}@${aws_db_instance.postgres.endpoint}:5432/${aws_db_instance.postgres.db_name}"
  sensitive   = true
}
