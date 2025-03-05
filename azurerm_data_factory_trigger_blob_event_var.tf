variable "trigger_name" {
  description = "The name of the blob event trigger."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory where the trigger will be created."
  type        = string
}

variable "blob_path_begins_with" {
  description = "The blob path to start monitoring."
  type        = string
}

variable "blob_path_ends_with" {
  description = "The blob path to stop monitoring."
  type        = string
}

variable "events" {
  description = "The list of blob events to trigger on (e.g., Microsoft.Storage.BlobCreated)."
  type        = list(string)
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
}

variable "description" {
  description = "A description for the trigger."
  type        = string
}

variable "pipeline_name" {
  description = "The name of the pipeline to trigger."
  type        = string
}

variable "pipeline_parameters" {
  description = "The parameters to pass to the pipeline."
  type        = map(string)
}
