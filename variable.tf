locals {
  ami                         = "ami-0440d3b780d96b29d"
  instance_type               = "t2.micro"
  key_name                    = "terraform-key"
  associate_public_ip_address = true
  cidr_blocks                 = ["0.0.0.0/0"]
  protocol                    = "tcp"
}

variable "avzone-public" {
  default = "us-east-1a"
}

variable "avzone-private" {
  default = "us-east-1b"
}
