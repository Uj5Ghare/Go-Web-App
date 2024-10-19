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
  default =  {}
}

variable "aws_secret_key" {
  type = string
  default =  {}
}

