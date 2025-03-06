variable "dataset_name" {
  description = "The name of the dataset."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default     = ""
}

variable "path" {
  description = "The path to the folder in the Blob Storage."
  type        = string
  default     = ""
}

variable "filename" {
  description = "The name of the file in the Blob Storage."
  type        = string
  default     = ""
}

variable "parameters" {
  description = "A map of parameters for the dataset."
  type        = map(string)
  default     = {}
}

variable "additional_properties" {
  description = "A map of additional properties for the dataset."
  type        = map(string)
  default     = {}
}

variable "description" {
  description = "A description of the dataset."
  type        = string
  default     = ""
}

variable "folder" {
  description = "The folder that this dataset is in."
  type        = string
  default     = ""
}

