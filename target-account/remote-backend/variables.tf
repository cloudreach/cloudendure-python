variable "region" {
  description = "Region for deployment"
  type        = string
}

variable "state_bucket_name" {
  description = "Name of the S3 bucket used for remote state files. Must be globally unique."
  type        = string
}

variable "block_public_acls" {
  description = "Block public ACLs for S3 bucket"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Block public policies for S3 bucket"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Ignore public policies for S3 bucket"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Restrict public S3 bucket"
  type        = bool
  default     = true
}

variable "state_lock_name" {
  description = "Name of Dynamodb table used for state locking"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}