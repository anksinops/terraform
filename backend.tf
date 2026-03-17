terraform {
  backend "s3" {
    # bucket         = "my-tf-test-bucket-99846asd"
    bucket         = "my-tf-test-bucket-99846asd"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    # use_lockfile   = true
  }
}