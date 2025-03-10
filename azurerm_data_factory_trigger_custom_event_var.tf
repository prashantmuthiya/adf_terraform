
variable "trigger_name" {
  description = "The name of the custom event trigger."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "eventgrid_topic_id" {
  description = "The ID of the Event Grid topic."
  type        = string
  default     = null
}

variable "events" {
  description = "A list of events to trigger the custom event trigger."
  type        = list(string)
  default     = null
}

variable "subject_begins_with" {
  description = "The prefix filter for event subject."
  type        = string
  default     = null
}

variable "subject_ends_with" {
  description = "The suffix filter for event subject."
  type        = string
  default     = null
}

variable "description" {
  description = "A description of the custom event trigger."
  type        = string
  default     = null
}

variable "activated" {
  description = "Whether the trigger is activated."
  type        = bool
  default     = null
}

variable "additional_properties" {
  description = "Additional properties for the custom event trigger."
  type        = map(string)
  default     = null
}

variable "pipelines_enabled" {
  description = "Flag to enable or disable pipeline execution."
  type        = bool
  default     = false
}

variable "pipelines" {
  description = "A list of pipelines to be executed."
  type = list(object({
    name       = string
    parameters = map(any)
  }))
  default     = null
}

variable "create_timeout" {
  description = "Timeout for creating the custom event trigger."
  type        = string
  default     = null
}

variable "read_timeout" {
  description = "Timeout for reading the custom event trigger."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "Timeout for updating the custom event trigger."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "Timeout for deleting the custom event trigger."
  type        = string
  default     = null
}

output "trigger_id" {
  value = azurerm_data_factory_trigger_custom_event.trigger_custom_event.id
}

/*
// Example module usage
module "adf_custom_event_trigger" {
  source                = "./modules/adf_custom_event_trigger"
  trigger_name          = "example-trigger"
  data_factory_id       = "example-data-factory-id"
  eventgrid_topic_id    = "example-eventgrid-topic-id"
  events                = ["event1", "event2"]
  subject_begins_with   = "example/subject/"
  subject_ends_with     = "/suffix"
  description           = "Example custom event trigger"
  activated             = true
  additional_properties = { key1 = "value1", key2 = "value2" }
  pipelines_enabled     = true
  pipelines = [
    {
      name       = "example-pipeline"
      parameters = { param1 = "value1", param2 = "value2" }
    }
  ]
  create_timeout = "40m"
  read_timeout   = "40m"
  update_timeout = "40m"
  delete_timeout = "40m"
}
*/