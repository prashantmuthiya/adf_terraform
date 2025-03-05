variable "integration_runtime_name" {
  description = "The name of the Azure Integration Runtime."
  type        = string
  default     = "value"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the Integration Runtime."
  type        = string
  default     = ""
}

variable "location" {
  description = "The Azure location where the Integration Runtime will be created."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the Integration Runtime."
  type        = string
  default     = ""
}

variable "time_to_live_min" {
  description = "The time to live (in minutes) for the Integration Runtime."
  type        = number
  default     = 0
}
