variable "aws_region" {
    description = "AWS region to deploy"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t3.micro"
}

variable "project_name" {
    description = "project name for tagging"
    type = string
    default = "my-first-ec2"
}

variable "ami_owner" {
    description = "AMI owner ID"
    type = string
    default = "099720109477"
}

variable "ami_filter" {
    description = "AMI name filer pattern"
    type = string
    default = "ubuntu/images/hvm-ssd/ubuntu-*24.04-amd64-server-*"
}
