variable "name" {
  description = "The name of the Azure SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to associate the SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "location" {
  description = "The location of the SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "description" {
  description = "A description for the SSIS Integration Runtime."
  type        = string
  default     = null
}

variable "node_size" {
  description = "The node size of the SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "number_of_nodes" {
  description = "The number of nodes in the SSIS Integration Runtime."
  type        = number
  default     = 1
}

variable "max_parallel_executions_per_node" {
  description = "The maximum parallel executions per node."
  type        = number
  default     = 1
}

variable "edition" {
  description = "The edition of the SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "license_type" {
  description = "The license type of the SSIS Integration Runtime."
  type        = string
  default     = ""
}

variable "custom_setup_script" {
  description = "Custom setup script for the SSIS Integration Runtime."
  type = object({
    blob_container_uri = string
    sas_token          = string
  })
  default = null
}

variable "express_custom_setup" {
  description = "Express custom setup for the SSIS Integration Runtime."
  type = object({
    command_key = string
    package_linked_service_name = string
    package_path = string
    relative_path = string
  })
  default = null
}

variable "vnet_integration" {
  description = "VNet integration for the SSIS Integration Runtime."
  type = object({
    subnet_id = string
  })
  default = null
}

variable "package_store" {
  description = "Package store for the SSIS Integration Runtime."
  type = object({
    linked_service_name = string
    name                = string 
  })
  default = null
}
