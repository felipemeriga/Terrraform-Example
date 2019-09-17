#providers
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

#resources
resource "aws_instance" "nat" {
  ami = "ami-6869aa05"
  # this is a special ami preconfigured to do NAT
  instance_type = "m1.small"
  key_name = "${aws_key_pair.ec2key.key_name}"
  vpc_security_group_ids = [
    "${aws_security_group.nat.id}"]
  subnet_id = "${aws_subnet.subnet_public.id}"
  associate_public_ip_address = true
  source_dest_check = false
  tags {
    Name = "${var.nat_instance_name}"
    Environment = "${var.environment_tag}"
  }
}
