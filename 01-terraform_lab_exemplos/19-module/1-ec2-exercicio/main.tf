provider "aws" {
  region = "sa-east-1"
}

module "criar_instancia_da_erika" {
  source = "@github.com:daniellesilveira-ds/modulo_devops_terraform_dani.git/erika"
  nome = "ec2-dani-tf"
  tipo = "t2.micro"
}

/*
module "criar_instancia_da_erika_micro" {
  source = "./erika"
  nome = "Um nome"
  tipo = "micro"
}
*/