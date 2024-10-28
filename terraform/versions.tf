terraform {
  required_version = ">= 1.9.5"
  backend "s3" {
    bucket         = "arv-gitops-tf-backend"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "GitopsTerraformLocks"
  }
}