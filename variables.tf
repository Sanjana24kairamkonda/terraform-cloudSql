variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "database_password" {
  description = "Password for the Cloud SQL database user"
  type        = string
}

variable "gcp_credentials_file" {
  description = "Path to GCP credentials JSON file"
  type        = string
  default     = "terraform-sa-key.json"
}
