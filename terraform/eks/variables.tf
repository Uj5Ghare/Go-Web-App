variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-2"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "aws_access_key" {
  type = string
  default =  "${AWS_ACCESS_KEY}"
}

variable "aws_secret_key" {
  type = string
  default =  "${AWS_SECRET_KEY}"
}

