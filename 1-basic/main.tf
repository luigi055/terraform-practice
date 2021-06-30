// AWS Region
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "HelloWorld" {
  ami           = "ami-0ca5c3bd5a268e7db"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}