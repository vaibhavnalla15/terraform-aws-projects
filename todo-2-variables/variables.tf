variable "bucket_name" {
  description = "A list of S3 bucket names to create"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "staging"
}