terraform {
    backend "s3" {
      encrypt           = true
      bucket            = "terrform-state-file-bucket"
      dynamodb_table    = "dynamodb-lock-table"
      region            = "us-east-2"
      key               = "tfstates/jenkins-ec2/terraform.tfstate"
    }
}