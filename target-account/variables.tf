variable "region" {
  description = "The AWS region in target account"
  type        = string
}

variable "source_account_id" {
  description = "Account ID of source account"
  type        = string
}

variable "target_account_id" {
  description = "Account ID of target account"
  type        = string
}

variable "iam_role_name" {
  description = "Name of IAM Role"
  type        = string
}

variable "iam_policy_name" {
  description = "Name of IAM Policy"
  type        = string
}
