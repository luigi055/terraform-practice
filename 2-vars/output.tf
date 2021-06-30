output "instanceID" {
  description = "InstanceID created"
  value       = join("", aws_instance.HelloWorld2.*.arn)
}
output "PublicIP" {
  description = "Public IP address"
  value       = join("", aws_instance.HelloWorld2.*.public_ip)
}
