terraform {
  backend "s3" {
    bucket = "statefile-amitesh"
    key = "state/terraform.tfstate"
    encrypt = true
    region = "us-east-2"
    dynamodb_table = "dynamodb-state-locking"
    
  }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
     # version = "~>3.49.0"

    }
  }
}
provider "aws" {
   region = "us-east-2"
}

#provider information block END
#plan2 resource block  BEGIN
resource "aws_instance" "plan2" {
  instance_type          = "t2.micro"
  ami                    = "ami-05d8140b845a8aa7b"
}