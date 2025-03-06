variable "name" {
  description = "The name of the Azure-SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the Integration Runtime."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location/region where the Integration Runtime should be created."
  type        = string
  default     = ""
}

variable "description" {
  description = "A description for the Integration Runtime."
  type        = string
  default     = ""
}

variable "node_size" {
  description = "The node size of the Azure-SSIS Integration Runtime."
  type        = string
  default     = "Standard_D8_v3"
}

variable "number_of_nodes" {
  description = "The number of nodes in the Azure-SSIS Integration Runtime."
  type        = number
  default     = 1
}

variable "max_parallel_executions_per_node" {
  description = "The maximum number of parallel executions per node."
  type        = number
  default     = 1
}

variable "edition" {
  description = "The edition of the Azure-SSIS Integration Runtime."
  type        = string
  default     = "Standard"
}

variable "license_type" {
  description = "The license type for the Azure-SSIS Integration Runtime."
  type        = string
  default     = "BasePrice"
}


