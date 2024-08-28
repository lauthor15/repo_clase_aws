resource "aws_instance" "Clase-150824-EC" {
  ami           = "ami-04a81a99f5ec58529"  # Cambia esto por el ID de la AMI que prefieras
  instance_type = "t2.micro"
  key_name = "class_1608"
  associate_public_ip_address =true
  subnet_id = aws_subnet.Subnet_clase_1.id
  vpc_security_group_ids = [ aws_security_group.sg_ssh.id ]

  tags ={
    Name = "EC2_clase150824"
    }
}
