terraform {
  backend "s3" {
    bucket = "my-dev-akshat-bucket"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamo-db-table"
  }
}
