variable "linked_service_name" {
  description = "Name of the Key Vault Linked Service"
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory"
  type        = string
  default = "adf"
}

variable "key_vault_id" {
  description = "The ID of the Azure Key Vault"
  type        = string
  default = "key_vault_id"
}

variable "annotations" {
  description = "A list of annotations for the linked service"
  type        = list(map(string))
  default     = []
}

variable "parameters" {
  description = "A list of parameters for the linked service"
  type        = list(map(string))
  default     = []
}

