# Generate a random string to append to resource names.
resource "random_string" "random" {
  length  = 4
  upper   = false
  special = false
}

# Creates a GCP Project.
resource "google_project" "algorand" {
  name            = var.project_name
  project_id      = "${var.project_name}-${random_string.random.result}"
  billing_account = var.billing_account
  org_id          = var.org_id
  labels          = var.labels

}

# Enable services in newly created GCP Project.
resource "google_project_service" "gcp_services" {
  count   = length(var.gcp_service_list)
  project = google_project.algorand.project_id
  service = var.gcp_service_list[count.index]

  disable_dependent_services = true
}

# Creates a GCS bucket to store tfstate.
resource "google_storage_bucket" "tfstate" {
  name     = "${google_project.algorand.project_id}-tfstate"
  location = var.region
  project  = google_project.algorand.project_id
}
