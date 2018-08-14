resource "aws_subnet" "VMC1a" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "${var.vpc-subnet-cidr-a}"
  tags {
        Name = "VMC1a"
  }
 availability_zone = "${data.aws_availability_zones.available.names[0]}"
}

resource "aws_subnet" "VMC1b" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "${var.vpc-subnet-cidr-b}"
  tags {
        Name = "VMC1b"
  }
 availability_zone = "${data.aws_availability_zones.available.names[1]}"
}

resource "aws_subnet" "VMC1c" {
  vpc_id = "${aws_vpc.terraformmain.id}"
  cidr_block = "${var.vpc-subnet-cidr-c}"
  tags {
        Name = "VMC1c"
  }
 availability_zone = "${data.aws_availability_zones.available.names[2]}"
}
