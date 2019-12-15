resource "aws_vpc" "custom_vpc" {
    cidr_block = "10.0.0.0/24"

    tags = {
        Name = "custom_vpc"
    }

}
