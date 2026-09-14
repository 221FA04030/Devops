resource "aws_instance" "example" {
    ami = var.ami_id
    instance_type = var.instance_type
    associate_public_ip_address = true
}