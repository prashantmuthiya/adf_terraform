variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory where the linked service will be created."
  type        = string
}

variable "sas_uri" {
  description = "The SAS URI for the Azure Storage Account."
  type        = string
  sensitive   = true
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
