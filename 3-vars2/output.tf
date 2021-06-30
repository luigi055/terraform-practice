output "instanceID" {
  description = "InstanceID created"
  value       = join("", aws_instance.HelloWorld.*.arn)
}
output "PublicIP" {
  description = "Public IP address"
  value       = join("", aws_instance.HelloWorld.*.public_ip)
}
