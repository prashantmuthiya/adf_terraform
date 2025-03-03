variable "data_factory_name" {
  description = "The name of the Data Factory."
  type        = string
  default = "adf"
}

variable "resource_group_name" {
  description = "The name of the resource group containing the Data Factory."
  type        = string
  default     = "rg"
}

variable "name" {
  description = "The name of the Data Factory dataset."
  type        = string
  default     = "name"
}

variable "linked_service_name" {
  description = "The name of the linked service to use for the dataset."
  type        = string
  default     = "linked_service"
}

variable "folder_path" {
  description = "The folder path in the Azure Blob Storage."
  type        = string
  default     = "folder"
}

variable "file_name" {
  description = "The file name in the Azure Blob Storage."
  type        = string
  default     = "filename"
}

variable "file_path" {
  description = "The file path in the Azure Blob Storage."
  type        = string
  default     = "path"
}

variable "connection_string" {
  description = "The connection string for the Azure Blob Storage."
  type        = string
  default     = "connection_string"
}

variable "data_factory_id" {
    type = string
    description = "data factory id"
    default = "adf_id"
  
}