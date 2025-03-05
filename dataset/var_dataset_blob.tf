variable "linked_service_name" {
  description = "The name of the linked service for Azure Blob Storage"
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory"
  type        = string
}

variable "name" {
  description = "The name of the Azure Blob dataset"
  type        = string
}