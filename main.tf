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

    resource "aws_instance" "example" {
      ami = "ami-0c7212cdde317cfectia"
      instance_type = "t2.micro"
      key_name = "terraform.aws"
      vpc_security_group_ids = ["sg-0c51540c60857b7ed""sg-0c51540c60857b7ed"]
      subnet_id = "subnet-096d45c28d9fb4c14"
      root_block_device{
        volume_size = "10"
      }
      tags = {
        Name = "vm"
        create_by = "toyin"
      }
    }
}
