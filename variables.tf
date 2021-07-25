variable "ami_kali" {
  type    = string
  default = "ami-03cc0ad85d644ed06"
}

variable "ami_ubuntu" {
  type    = string
  default = "ami-03d5c68bab01f3496"
}

variable "private_key" {
  type    = string
  default = "AWS_Admin.pem"
}

variable "whitelist_cidr" {
  type    = string
  default = "71.237.113.46/32"
}