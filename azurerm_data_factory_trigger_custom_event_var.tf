variable "trigger_name" {
  description = "The name of the Data Factory trigger."
  type        = string
  default = "value"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default = "value"
}

variable "eventgrid_topic_id" {
  description = "The ID of the Event Grid topic."
  type        = string
  default = "value"
}

variable "events" {
  description = "The list of events to trigger on."
  type        = list(string)
  default = [ "value" ]
}

variable "subject_begins_with" {
  description = "The prefix for event subjects."
  type        = string
  default = "value"
}

variable "subject_ends_with" {
  description = "The suffix for event subjects."
  type        = string
  default = "value"
}

variable "description" {
  description = "The description of the trigger."
  type        = string
  default     = null
}

variable "activated" {
  description = "Whether the trigger is activated."
  type        = bool
  default     = true
}

variable "additional_properties" {
  description = "Additional properties for the trigger."
  type        = map(string)
  default     = null
}

variable "pipelines" {
  description = "A list of pipelines with name and parameters."
  type = list(object({
    name       = string
    parameters = map(string)
  }))
  default = null
}
