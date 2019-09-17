#resources
resource "aws_key_pair" "ec2key" {
  key_name = "${var.key_pair_name}"
  public_key = "${file(var.public_key_path)}"
}
