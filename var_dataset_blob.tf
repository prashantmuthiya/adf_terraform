variable "data_factory_name" {
  description = "The name of the Data Factory."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the Data Factory."
  type        = string
}

variable "name" {
  description = "The name of the Data Factory dataset."
  type        = string
}

variable "linked_service_name" {
  description = "The name of the linked service to use for the dataset."
  type        = string
}

variable "folder_path" {
  description = "The folder path in the Azure Blob Storage."
  type        = string
}

variable "file_name" {
  description = "The file name in the Azure Blob Storage."
  type        = string
}

variable "file_path" {
  description = "The file path in the Azure Blob Storage."
  type        = string
}

variable "connection_string" {
  description = "The connection string for the Azure Blob Storage."
  type        = string
}

variable "data_factory_id" {
    type = string
    description = "data factory id"
    default = "adf_id"
  
}