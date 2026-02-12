resource "aws_s3_bucket" "my-terraform-bucket" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}