terraform {
  backend "s3" {
    bucket = "chiru-xyz"
    key    = "chiru/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}


 