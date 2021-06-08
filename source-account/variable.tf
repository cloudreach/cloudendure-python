variable "region" {
  description = "The AWS region in source account"
  type        = string
}

variable "assume_role_list" {
  description = "Role to be assumed in target account"
  type        = list(string)
}
