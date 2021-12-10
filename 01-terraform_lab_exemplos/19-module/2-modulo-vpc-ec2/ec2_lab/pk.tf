resource "aws_key_pair" "chave_key_dani" {
  key_name   = "chave_key_dani_tf"
  public_key =  var.ssh_pub_key
}