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
