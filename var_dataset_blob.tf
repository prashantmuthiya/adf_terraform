variable "data_factory_name" {
  description = "The name of the Data Factory."
  type        = string
  default     = " adf"
}

variable "resource_group_name" {
  description = "The name of the resource group containing the Data Factory."
  type        = string
  default     = " rg"
}

variable "name" {
  description = "The name of the Data Factory dataset."
  type        = string
  default     = " dataset"
}

variable "linked_service_name" {
  description = "The name of the linked service to use for the dataset."
  type        = string
  default     = " linked-service"
}

variable "connection_string" {
  description = "The connection string for the Azure Blob Storage."
  type        = string
  default     = "DefaultEndpointsProtocol"
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
  default     = "examplestorageaccount"
}

variable "container_name" {
  description = "The name of the Blob Storage container."
  type        = string
  default     = " container"
}