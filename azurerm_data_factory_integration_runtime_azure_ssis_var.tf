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

/*
module "ssis_runtime" {
  source = "./path/to/ssis_runtime_module"

  name                                = "example-ssis-runtime"
  data_factory_id                     = azurerm_data_factory.example.id
  location                            = "East US"
  description                         = "SSIS runtime for data factory"
  node_size                           = "Standard_D2_v3"
  number_of_nodes                     = 2
  max_parallel_executions_per_node     = 2
  edition                             = "Standard"
  license_type                        = "BasePrice"

  custom_setup_script = {
    blob_container_uri = "https://example.blob.core.windows.net/container/setup.sql"
    sas_token          = "?sv=2021-04-10&ss=b&srt=co&sp=r&se=2025-01-01T00:00:00Z&st=2024-01-01T00:00:00Z&spr=https&sig=exampleSig"
  }

  vnet_integration = {
    subnet_id = azurerm_subnet.example.id
  }

  package_store = {
    linked_service_name = "example-linked-service"
    name                = "example-package-store"
  }
}
*/

