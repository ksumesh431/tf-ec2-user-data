resource "aws_security_group" "ssh" {
  name        = "ssh"
  description = "security group to allow ssh"
  ingress {
    description      = "allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}

resource "aws_security_group" "http" {
  name        = "http"
  description = "security group to allow http requests"
  ingress {
    description      = "allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}
