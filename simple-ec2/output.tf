output "instance_id" {
  description = "EC2 instance ID"
  value = aws_instance.my_ec2.id
}

output "instance_private_ip" {
  description = "EC2 private IP address"
  value = aws_instance.my_ec2.private_ip
}

output "instance_state" {
  description = "EC2 current state"
  value = aws_instance.my_ec2.instance_state
}

output "ami_used" {
  description = "AMI ID that was used"
  value = data.aws_ami.amazon_linux.id 
}