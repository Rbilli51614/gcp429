# Create new storage bucket in the US multi-region
# with standard storage
resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "static" {
  name          = "${random_id.bucket_prefix.hex}-new-bucket"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true
}