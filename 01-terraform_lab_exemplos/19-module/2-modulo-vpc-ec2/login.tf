
terraform {
  backend "remote" {
    organization = "UNCLE_SCROOGE"

    workspaces {
      name = "modulo_tf_dani"
    }
  }
}
