provider "aws" {
  region = ""
}

variable "s3_bucket_name_1" {
  description = "Name for s3 bucket"
}

resource "aws_s3_bucket" "myimpbck" {
  # (resource arguments)terr
    tags = {
    ENVIRONMENT = "dev"
  }
}

module "s3_creation" {
    source = "./modules/s3_bucket"
    s3_bucket_name = var.s3_bucket_name_1
}


