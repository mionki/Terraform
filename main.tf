provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "server" {
  ami           = "ami-080e1f13689e07408"
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
  Name = "server"  
  }

  monitoring = true 
  vpc_security_group_ids = ["sg-026f8b62692a82fba"]
}

