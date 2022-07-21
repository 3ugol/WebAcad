terraform {
  backend "http" {
  }
}

provider "aws" {
  region = "us-west-2"
}

locals {
  common_tags = {
    Terraform   = "true"
    Environment = "dev-0"
    Version     = var.app_version
  }
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "ec2_instance" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  version                     = "~> 4.0"
  name                        = "wa-app-instance"
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.app_instance_type
  key_name                    = var.aws_key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = ["sg-05e6851cde74897e8"]
  monitoring                  = true
  putin_khuylo                = true
  tags                        = local.common_tags
  enable_volume_tags          = true
}

resource "local_file" "inventory" {
  content  = module.ec2_instance.public_ip
  filename = "./inventory.ini"
}
