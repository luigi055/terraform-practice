variable "env"{
  default = "pre"
}
variable "instance_AMI" {
  default = "ami-0ca5c3bd5a268e7db"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "s3_bucket_terraform"{}