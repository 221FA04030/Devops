variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-01a00762f46d584a1"
}

variable "region" {
  description = "The AWS region to deploy the EC2 instance"
  type        = string
  default     = "ap-south-1"
}