variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
}

variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = ""
}

variable "connection_string_insecure" {
  description = "Connection string for Azure Blob Storage."
  type        = string
  sensitive   = true
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
}

variable "secret" {
  description = "The name of the secret in Key Vault."
  type        = string
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime."
  type        = string
  default     = null
}

variable "storage_kind" {
  description = "The kind of Azure Blob Storage."
  type        = string
  default     = "BlobStorage"
}

variable "tenant_id" {
  description = "The tenant ID for managed identity authentication."
  type        = string
  default     = null
}

variable "use_managed_identity" {
  description = "Specifies whether to use managed identity for authentication."
  type        = bool
  default     = false
}

variable "additional_properties" {
  description = "A map of additional properties."
  type        = map(string)
  default     = {}
}

variable "annotations" {
  description = "A list of annotations."
  type        = list(string)
  default     = []
}

variable "parameters" {
  description = "A map of parameters."
  type        = map(string)
  default     = {}
}

variable "create_timeout" {
  description = "Timeout for create operation."
  type        = string
  default     = "30m"
}

variable "read_timeout" {
  description = "Timeout for read operation."
  type        = string
  default     = "5m"
}

variable "update_timeout" {
  description = "Timeout for update operation."
  type        = string
  default     = "30m"
}

variable "delete_timeout" {
  description = "Timeout for delete operation."
  type        = string
  default     = "30m"
}
