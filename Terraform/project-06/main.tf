provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://13.203.103.154:8200"
  auth_login {
    path = "auth/approle/login"
    parameters = {
      role_id   = "951d714c-84ec-86a1-47fd-90c2838e54ab"
      secret_id = "febc9d17-ab9e-3d87-e85c-de7c8c2a806f"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "kv"
}

resource "aws_instance" "name" {
  ami = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  tags = {
    secret = data.vault_kv_secret_v2.example.data["secret"]
  }
}