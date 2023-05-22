provider "aws" {
  region = var.region
}

resource "aws_instance" "django-ansible" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = var.key_name

#  vpc_security_group_ids = [aws_security_group.django-ansible.id]
  
}

/**
resource "aws_security_group" "django-ansible" {
  name        = "django-ansible-sg"
  description = "Security group for Django Ansible EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
**/



output "instance_id" {
  value = aws_instance.django-ansible.id
}

output "public_ip" {
  value = aws_instance.django-ansible.public_ip
}
