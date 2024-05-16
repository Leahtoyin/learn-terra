terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "app_server" {
    ami =  "ami-08d70e59c07c61a3a"
    instance_type = "t2.micro"

    tags = {
    Name = "exampleserverinstance" 
    }
}
