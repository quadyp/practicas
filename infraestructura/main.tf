# 1.AWS
provider "aws" {
  region     = "us-east-1"
  access_key = "test" # Credenciales de mentira
  secret_key = "test" # Credenciales de mentira

  # Que Terraform no intente validar con el AWS real
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true

  # Decimos dónde está nuestro LocalStack
  endpoints {
    s3 = "http://localhost:4566"
  }
}

# Le pedimos que cree el cubo S3
resource "aws_s3_bucket" "mi_cubo_prueba" {
  bucket = "cubo-secreto-de-karim"
}
