resource "aws_ebs_volume" "ebs_example" {
    availability_zone = "eu-west-1a"
    size = 30
    encrypted = true 
    tags = {
        Name = "disk1"
    }
  
}
