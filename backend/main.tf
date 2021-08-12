terraform {
  backend "gcs" {
    bucket = "" # Update: GCS bucket name to store terraform tfstate
    prefix = "gcpstate/terraform.tfstate"
    credentials = "~/Downloads/key.json"   
}
}