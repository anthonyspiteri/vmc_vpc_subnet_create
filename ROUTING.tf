# Declare the data source
data "aws_availability_zones" "available" {}

/* EXTERNAL NETWORG , IG, ROUTE TABLE */
resource "aws_internet_gateway" "gw" {
   vpc_id = "${aws_vpc.terraformmain.id}"
    tags {
        Name = "internet gw terraform generated"
    }
}
resource "aws_network_acl" "all" {
   vpc_id = "${aws_vpc.terraformmain.id}"
    egress {
        protocol = "-1"
        rule_no = 2
        action = "allow"
        cidr_block =  "0.0.0.0/0"
        from_port = 0
        to_port = 0
    }
    ingress {
        protocol = "-1"
        rule_no = 1
        action = "allow"
        cidr_block =  "0.0.0.0/0"
        from_port = 0
        to_port = 0
    }
    tags {
        Name = "open acl"
    }
}
resource "aws_default_route_table" "default_route" {
  default_route_table_id = "${aws_vpc.terraformmain.default_route_table_id}"
}
resource "aws_route_table_association" "VMC1a" {
  route_table_id = "${aws_default_route_table.default_route.id}"
  subnet_id      = "${aws_subnet.VMC1a.id}"
}
resource "aws_route_table_association" "VMC1b" {
  route_table_id = "${aws_default_route_table.default_route.id}"
  subnet_id      = "${aws_subnet.VMC1b.id}"
}
resource "aws_route_table_association" "VMC1c" {
  route_table_id = "${aws_default_route_table.default_route.id}"
  subnet_id      = "${aws_subnet.VMC1c.id}"
}