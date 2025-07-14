variable "cluster_name" {
  default = "mail-cluster"
}

variable "region" {
  default = "us-east-1"
}

variable "db_name" {
  description = "Nome do banco de dados PostgreSQL"
  type        = string
}

variable "db_username" {
  description = "Usuário administrador do banco"
  type        = string
}

variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
  sensitive   = true
}

variable "db_port" {}
variable "email_host" {}
variable "email_port" {}
variable "email_use_tls" {}
variable "email_user" {}
variable "email_password" {}
variable "email_backend" {}
variable "default_from_email" {}
variable "debug"