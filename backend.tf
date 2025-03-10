terraform {
  backend "gcs" {
    bucket = "backend_storage1"  # The bucket you created
    prefix = "terraform/state"            # Prefix for state file in the bucket
  }
}
