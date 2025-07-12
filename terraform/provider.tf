provider "aws" {
  region  = "us-east-1"
  profile = "pessoal"
}

provider "helm" {
  kubernetes = {
    host                   = aws_eks_cluster.mail.endpoint
    cluster_ca_certificate = base64decode(aws_eks_cluster.mail.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.mail.token
  }
}

provider "kubernetes" {
  host                   = aws_eks_cluster.mail.endpoint
  cluster_ca_certificate = base64decode(aws_eks_cluster.mail.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.mail.token
}

