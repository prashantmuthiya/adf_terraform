
variable "dataset_name" {
  description = "The name of the Azure Blob dataset."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
}

variable "linked_service_name" {
  description = "The name of the linked service for Azure Blob Storage."
  type        = string
}

variable "folder_path" {
  description = "The folder path in the Blob Storage."
  type        = string
}

variable "file_name" {
  description = "The file name in the Blob Storage."
  type        = string
}

variable "format" {
  description = "The format of the Blob dataset."
  type        = string
}

variable "parameters" {
  description = "The parameters for the dataset."
  type        = map(string)
  default     = {}
}
