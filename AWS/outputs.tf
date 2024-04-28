output "coblat_ip" {
  value = aws_instance.cobalt_strike.public_ip
}

output "redirector_ip" {
  value = aws_instance.redirector.public_ip
}
