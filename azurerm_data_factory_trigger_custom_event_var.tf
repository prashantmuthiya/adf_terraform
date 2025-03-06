variable "trigger_name" {
  description = "The name of the Data Factory custom event trigger."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "eventgrid_topic_id" {
  description = "The ID of the Event Grid topic."
  type        = string
  default     = ""
}

variable "events" {
  description = "A list of events to trigger the pipeline."
  type        = list(string)
  default     = [  ]
}

variable "subject_begins_with" {
  description = "The prefix filter for the event subject."
  type        = string
  default     = ""
}

variable "subject_ends_with" {
  description = "The suffix filter for the event subject."
  type        = string
  default     = ""
}

variable "annotations" {
  description = "A list of annotations."
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