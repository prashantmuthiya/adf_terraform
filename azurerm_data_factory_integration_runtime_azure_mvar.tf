variable "integration_runtime_name" {
  description = "The name of the Integration Runtime."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "location" {
  description = "The location of the Integration Runtime."
  type        = string
  default     = null
}

variable "description" {
  description = "A description for the Integration Runtime."
  type        = string
  default     = null
}

variable "time_to_live_min" {
  description = "Time (in minutes) to keep the Integration Runtime alive."
  type        = number
  default     = null
}

variable "virtual_network_enabled" {
  description = "Enable or disable virtual network integration."
  type        = bool
  default     = null
}

variable "cleanup_enabled" {
  description = "Specifies whether cleanup is enabled for the Integration Runtime."
  type        = bool
  default     = null
}

variable "compute_type" {
  description = "The compute type for the Integration Runtime, e.g., 'General', 'MemoryOptimized'."
  type        = string
  default     = null
}

variable "core_count" {
  description = "The number of cores assigned to the Integration Runtime."
  type        = number
  default     = null
}

variable "timeouts" {
  description = "Timeout settings for create, update, and delete operations."
  type = object({
    create = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = null
}

/*
integration_runtime_name   = "example-ir"
data_factory_id            = "/subscriptions/xxxx/resourceGroups/rg-name/providers/Microsoft.DataFactory/factories/adf-name"
location                   = "East US"
description                = "Example Integration Runtime"
time_to_live_min           = 10
virtual_network_enabled    = true
cleanup_enabled            = true
compute_type               = "General"
core_count                 = 8
timeouts = {
  create = "30m"
  update = "30m"
  delete = "30m"
}
custom_properties = [
  {
    name  = "property1"
    value = "value1"
  },
  {
    name  = "property2"
    value = "value2"
  }
]
*/

