resource "aws_s3_bucket" "terraform-tfstate" {
  bucket = var.s3_bucket_terraform
  force_destroy = true
  
  versioning {
    enabled = true
  }
  
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
            "Name"        = var.s3_bucket_terraform
            "Environment" = var.env
            "ManagedBy"   = "Terraform"
        }
}