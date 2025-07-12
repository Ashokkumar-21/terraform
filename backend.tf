terraform {
  backend "s3" {
    bucket         = "my-s3-bucket-new-tf-1"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile  = true
  }
}