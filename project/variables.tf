# Google Cloud variables
variable "project_name" {
  description = "GCP Project name."
  type        = string
}
variable "labels" {
  description = "A set of key/value label pairs to assign to the project."
  type        = map
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list
}

variable "region" {
  description = "Default region to use for the project"
  type        = string
  default     = "us-central1"
}
