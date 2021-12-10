provider "aws" {
  region = "sa-east-1"
}

#resource "aws_instance" "web2" {
 # subnet_id = "subnet-02d7741675f030d69"
  #ami = "ami-083654bd07b5da81d"
  #instance_type = "t2.micro"
  #key_name = "chave_key" # a chave que vc tem na maquina pessoal
#  associate_public_ip_address = true
#  vpc_security_group_ids = ["sg-083654bd07b5da81d"]
#  root_block_device {
 #   encrypted = true
  #  volume_size = 8
  #}
 # tags = {
 #   Name = "ec2-zerati-tf"
 # }
#}

resource "aws_instance" "web2" {
 subnet_id = "subnet-0cf0e3d207e47eb3a"
 ami = "ami-0e66f5495b4efdd0f"
 instance_type = "t2.micro"
 key_name = "chave_key_dani_tf" # a chave que vc tem na maquina pessoal
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0ef32fd6dc0db7e5d"]
  root_block_device {
    encrypted = true
    volume_size = 8
  }
  tags = {
    Name = "ec2-dani-tf"
  }
}

output dns {
  value  = aws_instance.web2.private_dns

}

resource "aws_key_pair" "chave_key" {
  key_name   = "chave_key_dani_tf"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTBa0AY01OFuNZUYXldcMHPtwjkj6OgiEwLm3eRmMhRJGv0blXdZDMr4DoxkMz33V1rtn+aHmd+ZrqGDEBU+uV7pIhGpsGXm+WPGF6qN0gppWSwnRuBW3SZcu3JmWFfcEepB/HF7xbhiF9cSjiyHKepxH7X1X8YrbIS0lQXwEU6wvkozKPi8u8hzN9HDPVGuTjz+G5rMYtX5tTtezHofTi5NFEVBX7rvIK6FVpGW+NnUdCrXToy8rceacuDfQqMBjTFnc/TIR5QSnhUoK5l8CG2myzqLLfTFINvH5gywovjLggdqIGxBN4RWzgzK7OTcnCY9K0d6H2Olyfi9l893IPfqT1hk476C1k+WZe23X5Uo81wjcejw0SP1ms7wZP3htIiEEjD81KkuI2WRWJfjAkYePXw6Flz+IO8Lw4BglNci6czUeBvO3ha59UgDbXwaGn4LTkagVRATNUe4xeKWHipksypPsV1Bm8/1q8PpZj/+anVc8ZICXRSygy1BHskTk= ubuntu@dev-dani" # sua chave publica da maquina 
}