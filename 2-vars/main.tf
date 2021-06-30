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
resource "aws_instance" "HelloWorld2" {
  ami           = var.instance_AMI
  instance_type = var.instance_type
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = "HelloWorld2"
  }
  vpc_security_group_ids = [aws_security_group.HelloWorldSG.id]
  depends_on = [
    aws_security_group.HelloWorldSG,
  ]
}

resource "aws_security_group" "HelloWorldSG" {
  name = "HelloWorldSG"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}