resource "google_storage_bucket" "state_bucket" {
  name          = "backend-storage1"
  location      = "us-east1"
  force_destroy = true # Optional: Allows deleting the bucket even if it contains objects
}
