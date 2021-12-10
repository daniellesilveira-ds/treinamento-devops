terraform {
  required_version = ">= 0.12" # colocando compatibilidade do terraform para 0.12
}

resource "aws_instance" "web" {
  ami           = "ami-0e66f5495b4efdd0f"
  subnet_id     = "subnet-0cf0e3d207e47eb3a"
  instance_type = var.tipo
  key_name      = "key-private-turma3-dani-dev"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["sg-0ef32fd6dc0db7e5d"]
  root_block_device {
    encrypted   = true
    volume_size = 8
  }
  tags = {
    Name = "${var.nome}",
    Itau = true
  }
}

/*
ami-0e66f5495b4efdd0f
subnet-0cf0e3d207e47eb3a
vpc-0a08641ef0b17c6f9
sg-0ef32fd6dc0db7e5d
key-private-turma3-dani-dev
*/

