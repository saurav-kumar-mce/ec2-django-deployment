variable "region" {
  description = "The AWS region to deploy the EC2 instance"
  type        = string
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair to associate with the EC2 instance"
  type        = string
}
