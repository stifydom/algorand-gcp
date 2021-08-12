project_name = "algorand" # Update: Desired project name.
labels = {
  "environment" = "staging"
  "team"        = "devops"
}
gcp_service_list = [
  "cloudapis.googleapis.com",            # Google Cloud APIs
  "cloudresourcemanager.googleapis.com", # Cloud Resource Manager API
  "cloudbilling.googleapis.com",         # Cloud Billing API
  "cloudtrace.googleapis.com",           # Stackdriver Trace API
  "compute.googleapis.com",              # Compute Engine API
  "iam.googleapis.com",                  # Identity and Access Management (IAM) API
  "iamcredentials.googleapis.com",       # IAM Service Account Credentials API
  "logging.googleapis.com",              # Stackdriver Logging API
  "monitoring.googleapis.com",           # Stackdriver Monitoring API
  "servicemanagement.googleapis.com",    # Service Management API
  "serviceusage.googleapis.com",         # Service Usage API
  "sourcerepo.googleapis.com",           # Cloud Source Repositories API
  "storage-api.googleapis.com",          # Google Cloud Storage JSON API
  "storage-component.googleapis.com",    # Cloud Storage
  "cloudbuild.googleapis.com",           # Cloud Build
  "run.googleapis.com",                  # Cloud Run API
  "containerregistry.googleapis.com",    # Google Container Registry API
  "cloudscheduler.googleapis.com",       # Cloud Scheduler API
]