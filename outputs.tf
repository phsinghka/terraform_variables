output "instance_id" {
  description = "The Instance id of EC2"
  value       = aws_instance.first_terraform_instance.id
}

output "public_ip" {
  description = "THe Public IP for Ec2"
  value       = aws_instance.first_terraform_instance.public_ip
}
