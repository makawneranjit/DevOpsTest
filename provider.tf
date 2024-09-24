provider "aws" {
  region = "eu-east-2"
  default_tags {
    tags = {
      Account       = "NonProd"
      ManagedBy     = "Terraform"
      Oranization   =   "Individual"
    }
  }
}