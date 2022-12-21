#
# Variables
#

variable "location" {
  type    = string
  default = "westeurope"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "purpose" {
  description = "Purpose is used in the naming of the resources"
  type = string

  validation {
    condition     = length(var.purpose) < 16
    error_message = "The purpose value must not exceed 15 characters."
  }
}

variable "policy_assignment_ids_to_exempt" {
  description = "Policy assignment IDs that need an exemption"
  default     = []
  type        = set(string)
}
