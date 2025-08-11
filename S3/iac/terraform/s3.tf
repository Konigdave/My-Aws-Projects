

resource "aws_s3_bucket" "konigdave-s3-bucket" {
  bucket = "my-konig-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}