resource "aws_instance" "ec2_instance" {
    ami = "ami-01f14919ba412de34"
    
    instance_type = "t2.micro"
    
    associate_public_ip_address = "true"
    
    monitoring = true #detailed monitoring 
    
    count = 2 

    lifecycle { #Resource aws_instance.ec2_instance[0] has lifecycle.prevent_destroy set, but
                #the plan calls for this resource to be destroyed. To avoid this error and
                #continue with the plan, either disable lifecycle.prevent_destroy or reduce the
                #scope of the plan using the -target flag.
        prevent_destroy = false 
    }

    key_name = "myMac"

    #security_groups = ["sg-0670d5ce720b78043", "sg-d399afa6"] #list multiple sec groups u got 

    root_block_device {
        volume_size = 30 #root storage
    }

    ebs_block_device { #ebs 
        device_name = "storage"
        volume_size = 10 
    }

    tags = { #= sign 
        server = "web"
    }

    user_data = file("bootstrap.txt")
}