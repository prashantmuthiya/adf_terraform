variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the linked service."
  type        = string
  default     = ""
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime to be used by this linked service."
  type        = string
  default     = null
}

variable "connection_string" {
  description = "The connection string for the Azure SQL Database."
  type        = string
  default     = ""
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = null
}

variable "key_vault_secret_name" {
  description = "The secret name in Key Vault containing the connection string."
  type        = string
  default     = null
}

variable "parameters" {
  description = "A map of parameters to associate with the linked service."
  type        = map(string)
  default     = {}
}

variable "annotations" {
  description = "List of annotations for the linked service."
  type        = list(string)
  default     = []
}

variable "additional_properties" {
  description = "A map of additional properties to set on the linked service."
  type        = map(string)
  default     = {}
}

variable "create_timeout" {
  description = "Timeout for creating the linked service."
  type        = string
  default     = ""
}

variable "read_timeout" {
  description = "Timeout for reading the linked service."
  type        = string
  default     = ""
}

variable "update_timeout" {
  description = "Timeout for updating the linked service."
  type        = string
  default     = ""
}

variable "delete_timeout" {
  description = "Timeout for deleting the linked service."
  type        = string
  default     = ""
}