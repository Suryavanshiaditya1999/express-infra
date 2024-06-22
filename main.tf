
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-09040d770ffe2224f"
  instance_type = "t2.micro"
  key_name = "new"
  tags = {
    Name = "HelloWorld"
  }
}