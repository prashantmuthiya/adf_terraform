variable "name" {
  description = "The name of the Linked Service."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "integration_runtime_name" {
  description = "The name of the Integration Runtime to use."
  type        = string
  default     = null
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = null
}

variable "key_vault_secret_name" {
  description = "The name of the secret in Key Vault."
  type        = string
  default     = null
}

variable "key_vault_secret_version" {
  description = "The version of the secret in Key Vault."
  type        = string
  default     = null
}

variable "connection_string" {
  description = "The connection string for the Synapse linked service."
  type        = string
  default     = null
}

variable "parameters" {
  description = "A map of parameters to associate with the linked service."
  type        = map(string)
  default     = null
}

variable "annotations" {
  description = "A list of annotations to add to the linked service."
  type        = list(string)
  default     = null
}

variable "description" {
  description = "The description for the linked service."
  type        = string
  default     = null
}

variable "create_timeout" {
  description = "The timeout for creating the linked service."
  type        = string
  default     = null
}

variable "read_timeout" {
  description = "The timeout for reading the linked service."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "The timeout for updating the linked service."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "The timeout for deleting the linked service."
  type        = string
  default     = null
}

output "linked_service_id" {
  description = "The ID of the created Linked Service."
  value       = azurerm_data_factory_linked_service_synapse.example.id
}

# Example usage
module "synapse_linked_service" {
  source = "./path/to/your/module"

  name                         = "example-synapse-linked-service"
  data_factory_id               = "your-data-factory-id"
  integration_runtime_name      = "AutoResolveIntegrationRuntime"
  key_vault_linked_service_name = "example-keyvault-linked-service"
  key_vault_secret_name         = "example-secret-name"
  key_vault_secret_version      = "example-secret-version"
  connection_string             = "example-connection-string"
  parameters                    = { "param1" = "value1" }
  annotations                   = ["example-annotation"]
  description                   = "Example Synapse Linked Service"
  create_timeout                = "30m"
  read_timeout                  = "30m"
  update_timeout                = "30m"
  delete_timeout                = "30m"
}
