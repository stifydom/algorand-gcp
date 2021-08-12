output "project_id" {
  value = google_project.algorand.project_id
}

output "project_number" {
  value = google_project.algorand.number
}

output "bucket_name" {
  value = google_storage_bucket.tfstate.name
}