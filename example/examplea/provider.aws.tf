provider "aws" {
  version = "~>2.54"
  region  = "eu-west-1"
}

provider "local" {
  version = "1.3"
}

provider "template" {
  version = "2.1"
}
