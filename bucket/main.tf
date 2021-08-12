# Creates a GCS bucket.
resource "google_storage_bucket" "my_bucket" {
  name     ="${var.project_id}-bucket-${random_string.random.result}"# Update: Unique bucket name
  location =  var.region
}

resource "random_string" "random" {
  length  = 4
  upper   = false
  special = false
}
provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file("~/Downloads/key.json")
}
variable "project_id" {
  description = "Google Project ID."
  type        = string
  default     = "castl-staging"
}
variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-east4"
}

output "bucket_name" {
  value = google_storage_bucket.my_bucket.name
}
