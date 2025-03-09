// variables.tf
variable "name" {
  description = "The name of the Snowflake linked service."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "connection_string" {
  description = "The Snowflake connection string."
  type        = string
  default     = null
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = null
}

variable "snowflake_secret_name" {
  description = "The name of the secret in Key Vault containing the Snowflake password."
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the linked service."
  type        = string
  default     = null
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime."
  type        = string
  default     = null
}

variable "annotations" {
  description = "Annotations for the linked service."
  type        = list(string)
  default     = []
}

variable "additional_properties" {
  description = "Additional properties for the linked service."
  type        = map(string)
  default     = {}
}

variable "create_timeout" {
  description = "Timeout for creating the linked service."
  type        = string
  default     = null
}

variable "read_timeout" {
  description = "Timeout for reading the linked service."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "Timeout for updating the linked service."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "Timeout for deleting the linked service."
  type        = string
  default     = null
}
/*
// Example usage in main.tf
module "snowflake_linked_service" {
  source                      = "./path/to/this/module"
  name                        = "example-snowflake-linked-service"
  data_factory_id              = "example-data-factory-id"
  connection_string            = "example-connection-string"
  key_vault_linked_service_name = "example-key-vault-linked-service"
  snowflake_secret_name        = "example-snowflake-secret"
  description                  = "Example Snowflake linked service."
  integration_runtime_name     = "example-integration-runtime"
  annotations                  = ["example-annotation"]
  additional_properties        = { example_property = "example_value" }
  create_timeout               = "30m"
  read_timeout                 = "5m"
  update_timeout               = "30m"
  delete_timeout               = "30m"
}
*/