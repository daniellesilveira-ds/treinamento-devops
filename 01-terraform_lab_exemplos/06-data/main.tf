provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"] # ou ["099720109477"] ID master com permissão para busca

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-*"] # exemplo de como listar um nome de AMI - 'aws ec2 describe-images --region us-east-1 --image-ids ami-09e67e426f25ce0d7' https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html
  }
}

data http api {
  url = "https://viacep.com.br/ws/09664000/json/unicode/"

  request_headers = {
    Accept = "application/json"
  }
}


#output api {
 # value       = data.http.api
#}


output name {
  value       = data.aws_ami.ubuntu.id
  description = "output de ami"
}

output api {
  value       = jsondecode(data.http.api.body).bairro
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  tags = {
    Name = "Maquina de Teste EC2"
  }
}