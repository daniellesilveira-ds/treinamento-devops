export TF_VAR_ssh_local=$(cat id_rsa.pub)
terraform destroy -auto-approve