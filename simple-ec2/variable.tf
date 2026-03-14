variable "aws_region" {
    description = "AWS region to deploy"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}

variable "project_name" {
    description = "project name for tagging"
    type = string
    default = "my-first-ec2"
}