provider "aws" {
  region = "ap-south-1"
}


variable "instance_type" {
  description = "The type of EC2 instance to create"
 
  
}
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  
}
resource "aws_instance" "example" {
  ami = var.ami_id
  instance_type = var.instance_type
}