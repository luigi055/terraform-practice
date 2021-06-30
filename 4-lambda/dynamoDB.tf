resource "aws_dynamodb_table" "terraform_tfstate" {
  name         = "terraform_tfstate"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}