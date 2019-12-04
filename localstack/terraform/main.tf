provider "aws" {
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  region = "us-east-1"

  endpoints {
    ec2 = "http://localhost:4597"
//    dynamodb = "http://localhost:4569"
//    s3       = "http://localhost:4572"
  }
}

resource "aws_instance" "example" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
}
