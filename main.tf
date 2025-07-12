resource "aws_instance" "my_first_ec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "MyFirstTerraformEC2"
    }
}

resource "aws_s3_bucket" "my_first_s3_bucket" {
  bucket = var.s3_bucket_name # Use the S3 bucket name variable

  tags = {
    Name        = "MyFirstTerraformS3Bucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket_versioning" "my_first_s3_bucket_versioning" {
  bucket = aws_s3_bucket.my_first_s3_bucket.id # Reference the S3 bucket's ID
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "my_first_s3_bucket_public_access_block" {
  bucket = aws_s3_bucket.my_first_s3_bucket.id # Reference the S3 bucket's ID

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}