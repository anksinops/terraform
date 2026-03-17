# resource "aws_s3_bucket" "test-tf" {
#   bucket = var.s3_bucket_name

#   tags = {
#     Name        = "test_bucket"
#     Environment = "SIT"
#   }
# }

#  for state lock using s3
resource "aws_s3_bucket" "tf_state" {
#   bucket = "my-unique-tf-state-bucket"
  bucket = var.s3_bucket_name
  tags = {
    Name = "Terraform State"
  }
}


