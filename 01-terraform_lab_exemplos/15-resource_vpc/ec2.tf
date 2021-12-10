resource "aws_instance" "web" {

  subnet_id                   = aws_subnet.my_subnet_a.id          #"subnet-0ec5807e6ab359f76"
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.chave_key_dani.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  root_block_device {
    encrypted   = true
    volume_size = 8
  }
  tags = {
    Name = "ec2-dani-tf01"
  }
}

  