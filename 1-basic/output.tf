output "public_ip" {
  description = "PublicIP created"
  value       = join("", aws_instance.HelloWorld.*.public_ip)
}
