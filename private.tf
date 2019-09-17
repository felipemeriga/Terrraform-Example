#resources
resource "aws_subnet" "private" {
  vpc_id = "${aws_vpc.vpc.id}"

  cidr_block = "${var.cidr_subnet_private}"

  tags {
    Name = "Private-Subnet-${var.user_identification}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.gw.id}"
  }

  tags {
    Name = "Private-Route-Table-${var.user_identification}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_route_table_association" "private" {
  subnet_id = "${aws_subnet.private.id}"
  route_table_id = "${aws_route_table.private.id}" 
}
