provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count = var.sai
  ami           = "ami-0ecb62995f68bb549"
  instance_type = var.disk

  tags = {
    Name = "dev-server"
  }
}

