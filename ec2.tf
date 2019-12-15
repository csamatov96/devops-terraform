resource "aws_instance" "ec2_instance" {
    ami = "ami-01f14919ba412de34"
    
    instance_type = "t2.micro"
    
    associate_public_ip_address = "true"
    
    monitoring = true #detailed monitoring 
    
    count = 2 

    lifecycle {
        prevent_destroy = true 
    }
}