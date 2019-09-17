# Variables
variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
variable "user_identification" {
  default = "TerraformExampleUser"
}
variable "region" {
  default = "us-east-1"
}
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "172.31.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default = "172.31.0.0/17"
}
variable "cidr_subnet_private" {
  description = "CIDR block for the private subnet"
  default = "172.31.128.0/17"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "us-east-1a"
}
variable "key_pair_name" {
  description = "The name of the current key pair"
  default = "mykey"
}
variable "public_key_path" {
  description = "Public key path"
  default = "mykey.pub"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-6869aa05"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "nat_instance_name" {
  description = "The name of the Nat instance"
  default = "NatInstance"
}
variable "private_instance" {
  description = "The name of the private instance"
  default = "Private Instance"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Development"
}

