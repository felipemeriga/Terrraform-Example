#resources
resource "aws_instance" "testInstance" {
  ami = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.private.id}"
  security_groups = [
    "${aws_security_group.db.id}"]
  source_dest_check = false
  key_name = "${aws_key_pair.ec2key.key_name}"
  tags {
    Environment = "${var.environment_tag}"
    Name = "${var.private_instance}"
  }
}
