variable "linked_service_name" {
  description = "The name of the Azure File Storage linked service."
  type        = string
  default = "value"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to associate the Linked Service."
  type        = string
  default = "value"
}

variable "connection_string" {
  description = "The connection string for accessing the Azure File Storage."
  type        = string
  default = "value"
}

variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = null
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

variable "parameters" {
  description = "A map of parameters to set on the linked service."
  type        = map(string)
  default     = {}
}

variable "integration_runtime" {
  description = "The name of the Integration Runtime to be used by the linked service."
  type        = string
  default     = null
}

variable "host" {
  description = "The host name or IP address of the Azure File Storage."
  type        = string
  default     = null
}

variable "file_share" {
  description = "The file share name within Azure File Storage."
  type        = string
  default     = null
}



variable "create_timeout" {
  description = "Timeout for the create operation."
  type        = string
  default     = "30m"
}

variable "read_timeout" {
  description = "Timeout for the read operation."
  type        = string
  default     = "30m"
}

variable "update_timeout" {
  description = "Timeout for the update operation."
  type        = string
  default     = "30m"
}

variable "delete_timeout" {
  description = "Timeout for the delete operation."
  type        = string
  default     = "30m"
}

# Example usage
# module "azure_file_storage_linked_service" {
#  source                = "../modules/linked_service_azure_file_storage"
#  linked_service_name   = "example-linked-service"
#  data_factory_id       = "your-data-factory-id"
#  connection_string     = "your-connection-string"
#  description           = "Example Linked Service for Azure File Storage"
#  annotations           = ["example", "linked_service"]
#  additional_properties = { "property1" = "value1" }
#  parameters            = { "param1" = "value1" }
#  integration_runtime   = "AutoResolveIntegrationRuntime"
#  host                  = "your-storage-account.file.core.windows.net"
#  file_share            = "your-file-share-name"
#  key_vault_password    = "your-key-vault-secret"
#  create_timeout        = "40m"
#  read_timeout          = "10m"
#  update_timeout        = "20m"
#  delete_timeout        = "15m"
#}
