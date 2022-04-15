resource "aws_instance" "myec2vm" {
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  user_data              = file("app1-install.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.ssh.id, aws_security_group.http.id]
  tags = {
    "Name" = "Testing EC2 with security groups"
  }
  # provisioner "file" {
  #   source      = "D:/Cloud Courses/terraform/ec2-sg/app1-install.sh"
  #   destination = "/home/ec2-user/app1-install.sh"
  # }
  # provisioner "remote-exec" {
  #   inline = [
  #     "chmod +x app1-install.sh",
  #     "sudo ./app1-install.sh"
  #   ]
  # }
  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("D:/Cloud Courses/aws course/key pair file/EC2Tutorial.pem")
    timeout     = "4m"
  }

}
