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
  description = "The folder path where the blob is located."
  type        = string
  default     = ""
}

variable "filename" {
  description = "The name of the blob file."
  type        = string
  default     = ""
}

variable "parameters" {
  description = "A map of parameters for the dataset."
  type        = map(string)
  default     = {}
}

variable "description" {
  description = "A description for the dataset."
  type        = string
  default     = ""
}

variable "folder" {
  description = "The folder that this dataset is located in inside the Data Factory."
  type        = string
  default     = ""
}

variable "dynamic_path_enabled" {
  description = "Specifies whether dynamic path is enabled."
  type        = bool
  default     = false
}

variable "dynamic_filename_enabled" {
  description = "Specifies whether dynamic filename is enabled."
  type        = bool
  default     = false
}


