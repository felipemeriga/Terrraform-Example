#resource
resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id = "${aws_subnet.subnet_public.id}"
  depends_on = [
    "aws_internet_gateway.igw"]

  tags {
    Name = "NAT-Gateway-${var.user_identification}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_eip" "nat" {
  vpc = true

  tags {
    Name = "Elastic-IP-${var.user_identification}"
    Environment = "${var.environment_tag}"
  }
}
