terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
      }
      mysql = {
          source = "terraform-providers/mysql"
      }
  }
}