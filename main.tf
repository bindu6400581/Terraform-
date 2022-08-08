erraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "us-west-2"
}
resource "aws_instance" "app_server" {
  ami           = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"
  key_name="ec2-k8s"
  tags = {
    Name = "Masters"
  }
}
resource "aws_instance" "app_server2" {
  ami           = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"
    key_name="ec2-k8s"
  tags = {
    Name = "WorkerNode1"
  }
}
resource "aws_instance" "app_server3" {
  ami           = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"
  key_name="ec2-k8s"
  tags = {
    Name = "WorkerNode2"
  }
}
