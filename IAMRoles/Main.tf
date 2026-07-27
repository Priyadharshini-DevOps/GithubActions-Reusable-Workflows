terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "Nobelyuga"

		workspaces {
			name = "Secrets"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}