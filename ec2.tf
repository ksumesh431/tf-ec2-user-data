resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.ssh.id, aws_security_group.http.id]
  tags = {
    "Name" = "Testing EC2 with security groups"
  }
}
