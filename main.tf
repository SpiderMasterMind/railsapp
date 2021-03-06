terraform {
   required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 2"
    }
  } 

  backend "pg" {
  }
}

variable "example_app_name" {
  description = "Name of the Heroku app provisioned as an example"
}

resource "heroku_app" "example" {
  name   = var.example_app_name
  region = "us"
}