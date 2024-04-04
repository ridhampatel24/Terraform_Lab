terraform {
  backend "s3" {
    bucket = "terra-state-dove-24"
    key    = "terraform/backends"
    region = "us-east-1"
  }
}
