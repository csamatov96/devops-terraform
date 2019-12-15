resource "aws_efs_file_system" "custom_efs" {
    tags = {
        Name = "Production_efs" 
    }
  
}
