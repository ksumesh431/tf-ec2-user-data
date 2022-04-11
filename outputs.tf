output "ec2instance_publicip" {
  description = "Displays public IP of ec2 instances"
  value       = aws_instance.myec2vm.public_ip
}

output "ami_id" {
  description = "Displays latest ami id obtained"
  value       = data.aws_ami.amzlinux2
}