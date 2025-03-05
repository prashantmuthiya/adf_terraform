variable "trigger_name" {
  description = "The name of the blob event trigger."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory where the trigger will be created."
  type        = string
  default     = ""
}

variable "blob_path_begins_with" {
  description = "The blob path to start monitoring."
  type        = string
  default     = ""
}

variable "blob_path_ends_with" {
  description = "The blob path to stop monitoring."
  type        = string
  default     = ""
}

variable "events" {
  description = "The list of blob events to trigger on (e.g., Microsoft.Storage.BlobCreated)."
  type        = list(string)
  default     = [  ]
}

variable "ignore_empty_blobs" {
  description = "Whether to ignore empty blobs."
  type        = bool
  default     = true
}

variable "activated" {
  description = "Whether the trigger is active."
  type        = bool
  default     = true
}

variable "annotations" {
  description = "A list of annotations."
  type        = list(string)
  default     = [  ]
}

variable "description" {
  description = "A description for the trigger."
  type        = string
}

variable "pipeline_name" {
  description = "The name of the pipeline to trigger."
  type        = string
  default     = ""
}

variable "pipeline_parameters" {
  description = "The parameters to pass to the pipeline."
  type        = map(string)
  default = { }
}

variable "storage_account_id" {
  description = "storage acoount id"
  type        = string
  default     = ""
}