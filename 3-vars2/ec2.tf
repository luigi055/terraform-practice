resource "aws_instance" "HelloWorld" {
  ami           = var.instance_AMI
  instance_type = var.instance_type
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  tags = {
    Name = var.env == "PRO" ? "HelloWorld" : "HelloWorld-pre"
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