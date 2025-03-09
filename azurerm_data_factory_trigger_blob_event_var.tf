// variable.tf
variable "trigger_name" {
  description = "The name of the blob trigger."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the data factory."
  type        = string
  default     = null
}

variable "events" {
  description = "A list of blob events to trigger on."
  type        = list(string)
  default     = null
}

variable "blob_path_begins_with" {
  description = "The blob path to begin with."
  type        = string
  default     = null
}

variable "blob_path_ends_with" {
  description = "The blob path to end with."
  type        = string
  default     = null
}

variable "ignore_empty_blobs" {
  description = "Whether to ignore empty blobs."
  type        = bool
  default     = null
}

variable "activated" {
  description = "Whether the trigger is activated."
  type        = bool
  default     = null
}

variable "storage_account_id" {
  description = "The ID of the storage account."
  type        = string
  default     = null
}

variable "annotations" {
  description = "Annotations for the blob trigger."
  type        = list(string)
  default     = null
}

variable "description" {
  description = "A description of the blob trigger."
  type        = string
  default     = null
}

variable "pipelines" {
  description = "A list of pipelines with their names and parameters."
  type = list(object({
    name       = string
    parameters = map(string)
  }))
  default = []
}