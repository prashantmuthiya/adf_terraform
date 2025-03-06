
variable "dataset_name" {
  description = "The name of the Azure Blob dataset."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "linked_service_name" {
  description = "The name of the linked service for Azure Blob Storage."
  type        = string
  default     = ""
}

variable "path" {
  description = "The folder path in the Blob Storage."
  type        = string
  default     = ""
}

variable "parameters" {
  description = "The parameters for the dataset."
  type        = map(string)
  default     = {}
}

variable "filename" {
  description = "The filename of the Azure Blob"  
  type        = string
  default     = ""
}
