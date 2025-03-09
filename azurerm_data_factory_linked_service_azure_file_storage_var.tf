# Existing variables
variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "connection_string" {
  description = "The connection string to the Azure file storage."
  type        = string
  default     = null
}

variable "description" {
  description = "Description of the linked service."
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

variable "parameters" {
  description = "Parameters for the linked service."
  type        = map(string)
  default     = {}
}

variable "integration_runtime" {
  description = "The integration runtime name."
  type        = string
  default     = null
}

variable "host" {
  description = "The host of the Azure file storage."
  type        = string
  default     = null
}

variable "file_share" {
  description = "The file share name."
  type        = string
  default     = null
}

# Key Vault Password variables
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

variable "key_vault_user_id" {
  description = "The user ID accessing the secret."
  type        = string
  default     = null
}

# Timeouts
variable "create_timeout" {
  description = "Timeout for creating the linked service."
  type        = string
  default     = "30m"
}

variable "read_timeout" {
  description = "Timeout for reading the linked service."
  type        = string
  default     = "30m"
}

variable "update_timeout" {
  description = "Timeout for updating the linked service."
  type        = string
  default     = "30m"
}

variable "delete_timeout" {
  description = "Timeout for deleting the linked service."
  type        = string
  default     = "30m"
}

/*
module "adf_linked_service" {
  source = "./modules/adf_linked_service"

  linked_service_name           = "example-linked-service"
  data_factory_id               = azurerm_data_factory.example.id
  connection_string             = "DefaultEndpointsProtocol=https;AccountName=example;AccountKey=exampleKey==;EndpointSuffix=core.windows.net"
  description                   = "ADF linked service for Azure file storage"
  annotations                   = ["example-annotation"]
  integration_runtime           = "example-integration-runtime"
  key_vault_user_id             = "example-user-id"
  host                          = "example.file.core.windows.net"
  file_share                    = "example-share"
  
  
  # Key Vault details
  key_vault_linked_service_name = "example-keyvault-linked-service"
  key_vault_secret_name         = "example-secret"
  
}
*/

