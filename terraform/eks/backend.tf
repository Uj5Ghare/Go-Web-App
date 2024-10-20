terraform {
  backend "s3" {
    bucket = "go-web-app-cluster-bucket"
    key    = "eks/terraform.tfstate"
    region = "ap-south-2"
  }
}
