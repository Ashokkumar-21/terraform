variable "aws_region" {
    description = "The AWS region where the resources will be deployed."
    type = string
    default = "ap-south-1"
}

variable "ami_id" {
    description = "The AMI ID for the EC2 instance."
    type        = string
    default = "ami-0f918f7e67a3323f0"
}

variable "instance_type" {
    description = "The instance type for the EC2 instance."
    type = string
    default = "t2.micro"
}

variable "s3_bucket_name" {
    description = "The globally unique name for the S3 bucket."
    type = string
    default = "my-s3-bucket-new-tf-1"
}