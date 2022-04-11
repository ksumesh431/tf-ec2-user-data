variable "instance_type" {
  description = "Instance type to be created"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "Key pair to be associated to every instance"
  type        = string
  default     = "EC2 Tutorial"
}

