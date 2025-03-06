variable "name" {
  description = "The name of the Snowflake linked service."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "connection_string" {
  description = "The connection string for Snowflake."
  type        = string
  default     = ""
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = ""
}

variable "snowflake_secret_name" {
  description = "The name of the secret in Key Vault storing Snowflake credentials."
  type        = string
  default     = ""
}

variable "description" {
  description = "A description of the linked service."
  type        = string
  default     = ""
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime to be used by the linked service."
  type        = string
  default     = null
}

variable "annotations" {
  description = "List of annotations for the linked service."
  type        = list(string)
  default     = []
}

variable "additional_properties" {
  description = "Additional properties for the linked service."
  type        = map(string)
  default     = {}
}