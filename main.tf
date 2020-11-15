/* Terraform Script to Stand Up a Kali Linux Server for Cobalt Strike Usage */

/* TODO Hookup Security Group to the Kali Instance and Add in SSH Key */

/* Providers */
provider "aws" {
    region = "us-west-2"
}

/* Variables */
variable "name" {
    default = "Blake"
}

variable "root_volume_size" {
    description = "Size (in GB) that you want the root volume to be"
    default = 50
}

variable "cidr_block" {
    default = "192.168.1.0/24"
}

variable "availability_zones" {
    default = ["us-west-2"]
}

/* VPC */
resource "aws_vpc" "main" {
    cidr_block = "${var.cidr_block}"
    tags = {
        Name = "${var.name}"
    }
}

/* Security Groups */
resource "aws_security_group" "kali_server" {
    vpc_id = "${aws_vpc.main.id}"
    tags = {
        Name = "Kali Test"
    }
}

resource "aws_security_group_rule" "allow_ssh" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "${aws_security_group.kali_server.id}"
}

/* Kali Instance */
resource "aws_instance" "MyFirstInstance" {
    ami = "ami-0a6335995610caf00"
    instance_type = "t2.micro"
    tags = {
        Name = "Blake Test"
    }
    root_block_device {
    volume_type = "gp2"
    volume_size = "${var.root_volume_size}"
    }
}
