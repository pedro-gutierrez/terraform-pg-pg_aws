resource "aws_s3_bucket" "cm-test-bucket" {
  bucket = "cm-test-branch--bucket"
  acl = "private"
  count = "${contains(list("test", "all"), var.tag) ? 1 : 0}"

  tags = {
    Name = "My CM Test Bucket (branch test)"
    Environment = "Test"
  }


}

resource "aws_s3_bucket" "cm-dev-bucket" {
  bucket = "cm-dev-branch-bucket"
  acl = "private"
  count = "${contains(list("dev", "all"), var.tag) ? 1 : 0}"

  tags = {
    Name = "My CM Dev Bucket (branch test)"
    Environment = "Dev"
  }
}
