provider "aws" {
	region = "eu-west-2"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    s3_force_path_style         = true
    access_key                  = "mock_access_key"
    secret_key                  = "mock_secret_key"
    endpoints {
      s3           = "http://localhost:4566"
    }
}

resource "aws_s3_bucket" "diversemix" {
	bucket = "diversemix-static"
    acl = "private"

    tags = {
    	Name = "diversemix static"
        Environment = "Development"
    }
}