provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "example" {
  ami           = "ami-01a18c38ece67e620"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0e0b6cae819ec30a2"
  key_name     = "ansible"
}