variable "linked_service_name" {
  description = "The name of the Azure SQL Database linked service."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "description" {
  description = "Description of the linked service."
  type        = string
  default     = ""
}

variable "integration_runtime_name" {
  description = "The name of the Integration Runtime."
  type        = string
  default     = ""
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = ""
}

variable "key_vault_secret_name" {
  description = "The name of the secret in Key Vault containing the connection string."
  type        = string
  default     = ""
}

variable "parameters" {
  description = "Parameters for the linked service."
  type        = map(string)
  default     = {}
}


