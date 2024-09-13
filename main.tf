provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "first_terraform_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    "Name" = "Variable-Demo-Instance"
  }
}
