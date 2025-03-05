variable "name" {
  description = "The name of the Snowflake linked service."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the linked service."
  type        = string
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
}

variable "snowflake_secret_name" {
  description = "The name of the secret in Key Vault containing the Snowflake connection string."
  type        = string
}

variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = "Snowflake linked service"
}

variable "connection_string" {
  description = "The connection string in which to authenticate with Snowflake"
  type        =  string
  default     = ""
}