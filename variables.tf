variable "subscription_id" {
  description = "The subscription ID to deploy to"
  type        = string
}

variable "region" {
  description = "The region to deploy to"
  type        = string
  default     = "uksouth"
}

variable "environment" {
  description = "The environment to deploy to (e.g., dev, stg, prd)"
  type        = string
}