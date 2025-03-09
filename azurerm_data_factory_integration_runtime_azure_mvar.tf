variable "integration_runtime_name" {
  description = "The name of the Integration Runtime."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location of the Integration Runtime."
  type        = string
  default     = ""
}

variable "description" {
  description = "A description for the Integration Runtime."
  type        = string
  default     = ""
}

variable "time_to_live_min" {
  description = "Time to live in minutes."
  type        = number
  default     = 0
}

variable "node_size" {
  description = "The node size of the Integration Runtime."
  type        = string
  default     = "Standard_D2_v3"
}

variable "number_of_nodes" {
  description = "The number of nodes."
  type        = number
  default     = 1
}

variable "max_parallel_executions_per_node" {
  description = "Max parallel executions per node."
  type        = number
  default     = 1
}

variable "virtual_network_enabled" {
  description = "Should the Integration Runtime be connected to a Virtual Network."
  type        = bool
  default     = false
}