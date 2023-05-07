terraform {
  backend "s3" {
    bucket = "django-ansible-bucket"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
