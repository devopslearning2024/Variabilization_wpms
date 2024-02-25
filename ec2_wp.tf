resource "aws_instance" "MyWordPress" {
  ami                         = local.ami
  instance_type               = local.instance_type
  key_name                    = local.key_name
  associate_public_ip_address = local.associate_public_ip_address
  subnet_id                   = aws_subnet.mysubnet1.id
  vpc_security_group_ids      = [aws_security_group.wordpresssg.id]
  availability_zone           = var.avzone-public
  tags = {
    Name = "WordPress-OS"
  }
}
