terraform {
  required_providers {

    local = {
      version = "2.0.0"
    }

    template = {
      version = "2.2.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=0.14.8"
}
