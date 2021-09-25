resource "aws_s3_bucket" "main" {
  acl    = "public-read"
  bucket = "ruhul-website-${var.env}"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags = {
    Name = "PublicWebsite"
    Env  = var.env
  }
}
