terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

# passing the latest aws_ami and in vlaue we are getting this in plcae of *
data "aws_ami" "amazon_linux" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name ="name"
      values = [amzn2-ami-hvm-*-x86_64]
    }
}

# creating the EC2 now

resource "aws_instance" "my_ec2" {
  ami = data.aws_ami.amazon_linux
  instance_type = var.instance_type
  tags = {
    Name = var.project_name
    ManagedBy = "Terraform"
  }
}
