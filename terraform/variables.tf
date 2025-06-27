variable "project_id" {
  description = "GCP Project ID"
  default     = "cicd-234"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "image_url" {
  description = "Container image URL in Artifact Registry"
  default     = "us-central1-docker.pkg.dev/cicd-234/cicd/flask-app:de087032a8f2"
  type        = string
}

variable "artifact_registry_name" {
  description = "Artifact Registry repository name"
  type        = string
  default     = "cicd"
}
