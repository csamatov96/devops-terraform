resource "aws_efs_file_system" "production" {
    tags = {
        Name = "Production_efs" 
    }
  
}
