provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "default" {
  name             = "my-instance"
  region           = var.region
  database_version = "MYSQL_5_7"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "default_db" {
  name     = "my_database"
  instance = google_sql_database_instance.default.name
}

resource "google_sql_user" "default_user" {
  name     = "terraform_user"
  instance = google_sql_database_instance.default.name
  password = var.database_password
}
