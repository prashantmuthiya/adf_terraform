variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory where the linked service will be created."
  type        = string
  default     = ""
}

variable "connection_string_insecure" {
  description = "The insecure connection string for the Azure Blob Storage."
  type        = string
  sensitive   = true
  default     = ""
}

variable "secret" {
    description = "Specifies the secret name in Azure Key Vault that stores the SAS token"
    type = string
    default = "secret"
}


variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = "Linked service to Azure Blob Storage using SAS token and Key Vault."
}
