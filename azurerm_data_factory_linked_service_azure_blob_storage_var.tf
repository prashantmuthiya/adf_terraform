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

variable "connection_string_insecure" {
  description = "The connection string for accessing the blob storage."
  type        = string
  default     = ""
}

variable "key_vault_linked_service_name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = ""
}

variable "secret" {
  description = "The secret name in Key Vault containing the SAS token."
  type        = string
  default     = ""
}

variable "integration_runtime_name" {
  description = "The name of the Integration Runtime to be used by the linked service."
  type        = string
  default     = null
}

variable "additional_properties" {
  description = "A map of additional properties for the linked service."
  type        = map(string)
  default     = {}
}

variable "annotations" {
  description = "A list of annotations for the linked service."
  type        = list(string)
  default     = []
}

variable "parameters" {
  description = "A map of parameters for the linked service."
  type        = map(string)
  default     = {}
}

variable "create_timeout" {
  description = "Timeout for creating the linked service."
  type        = string
  default     = "60m"
}

variable "read_timeout" {
  description = "Timeout for reading the linked service."
  type        = string
  default     = "5m"
}

variable "update_timeout" {
  description = "Timeout for updating the linked service."
  type        = string
  default     = "60m"
}

variable "delete_timeout" {
  description = "Timeout for deleting the linked service."
  type        = string
  default     = "60m"
}

/*
module "adf_blob_linked_service" {
  source                         = "./modules/adf_blob_linked_service"
  linked_service_name             = "example-linked-service"
  data_factory_id                 = azurerm_data_factory.example.id
  description                     = "Blob storage linked service"
  connection_string_insecure      = "DefaultEndpointsProtocol=https;AccountName=example;AccountKey=key;"
  key_vault_linked_service_name   = "example-keyvault-linked-service"
  secret                          = "storage-account-key"
  integration_runtime_name        = "AutoResolveIntegrationRuntime"
  additional_properties           = {}
  annotations                     = ["example"]
  parameters                      = {}
  create_timeout                  = "30m"
  read_timeout                    = "5m"
  update_timeout                  = "30m"
  delete_timeout                  = "30m"
}
*/