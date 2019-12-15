resource "aws_s3_bucket" "buckets3" {
    bucket = "chyngyzkansamatov"
    acl = "private"
    tags = {
        Name = "testing"
    }

}