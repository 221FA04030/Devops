provider "aws" {
  region = "ap-south-1"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  
}

variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = map(string)

  default = {
    "dev" = "t3.micro"
    "stage" = "t3.medium"
    "prod" = "t3.large"
  }
  
}

module "ec2_instance" {
  source        = "./module"
  ami_id        = var.ami_id
  instance_type = lookup(var.instance_type, terraform.workspace, "t3.micro") # Default to "dev" if not specified
}