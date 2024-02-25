resource "aws_instance" "Mysql" {
  ami                         = local.ami
  instance_type               = local.instance_type
  key_name                    = local.key_name
  associate_public_ip_address = local.associate_public_ip_address
  subnet_id                   = aws_subnet.mysubnet2.id
  vpc_security_group_ids      = [aws_security_group.mysqlsg.id]
  availability_zone           = var.avzone-private
  tags = {
    Name = "MySQL-OS"
  }
}
