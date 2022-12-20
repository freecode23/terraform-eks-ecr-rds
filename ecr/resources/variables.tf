variable "ecr_name" {
  description = "The name of the ECR registry"
  type        = any
  default     = null
}

variable "image_mutability" {
  description = "Provide image mutability"
  type        = string
  # not overwrite image
  default     = "IMMUTABLE"
}


variable "encrypt_type" {
  description = "Provide type of encryption here"
  type        = string
  default     = "AES256"
}

variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}