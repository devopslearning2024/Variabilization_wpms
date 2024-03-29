resource "aws_security_group" "mysqlsg" {
  name        = "mysql-sg"
  description = "Allow WordPress inbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description     = "WordPress traffic"
    from_port       = 3306
    to_port         = 3306
    protocol        = local.protocol
    security_groups = [aws_security_group.wordpresssg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = local.cidr_blocks
  }

  depends_on = [aws_security_group.wordpresssg]

  tags = {
    Name = "MySql-sg"
  }
}
