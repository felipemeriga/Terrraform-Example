#resources
resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_vpc}"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags {
    Name = "VPC-${var.user_identification}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags {
    Name = "Internet-Gateway-${var.user_identification}"
    Environment = "${var.environment_tag}"
  }
}
