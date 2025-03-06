variable "trigger_name" {
  description = "The name of the blob event trigger."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "events" {
  description = "The events to trigger on (for example: 'Microsoft.Storage.BlobCreated')."
  type        = list(string)
  default = [ "" , ""]
}

variable "blob_path_begins_with" {
  description = "The prefix filter to apply to the blob path."
  type        = string
  default     = ""
}

variable "blob_path_ends_with" {
  description = "The suffix filter to apply to the blob path."
  type        = string
  default     = ""
}

variable "ignore_empty_blobs" {
  description = "Should empty blobs be ignored?"
  type        = bool
  default     = true
}

variable "activated" {
  description = "Should the trigger be activated?"
  type        = bool
  default     = true
}

variable "storage_account_id" {
  description = "The ID of the storage account."
  type        = string
  default     = ""
}

variable "annotations" {
  description = "A list of annotations for the trigger."
  type        = list(string)
  default     = []
}

variable "description" {
  description = "The description of the trigger."
  type        = string
  default     = ""
}


variable "pipeline_name" {
  description = "The name of the pipeline to trigger."
  type        = string
  default     = ""
}

variable "pipeline_parameters" {
  description = "The parameters for the pipeline."
  type        = map(string)
  default     = {}
}