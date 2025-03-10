variable "dataset_name" {
  description = "The name of the Azure Blob dataset"
  type        = string
  default = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory"
  type        = string
  default = ""
}

variable "linked_service_name" {
  description = "The name of the linked service"
  type        = string
  default = ""
}

variable "path" {
  description = "The path to the dataset"
  type        = string
  default = ""
}

variable "filename" {
  description = "The filename in the dataset"
  type        = string
  default = ""
}

variable "parameters" {
  description = "A map of parameters for the dataset"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "A description of the dataset"
  type        = string
  default     = null
}

variable "folder" {
  description = "The folder for the dataset"
  type        = string
  default     = null
}

variable "dynamic_path_enabled" {
  description = "Enable dynamic path"
  type        = bool
  default     = null
}

variable "dynamic_filename_enabled" {
  description = "Enable dynamic filename"
  type        = bool
  default     = null
}

variable "schema_columns" {
  description = "A list of schema columns, each with a name and type."
  type = map(any)
  default = {}
}


/*module "adf_azure_blob_dataset" {
  source = "./AzureDataFactory_AZ_dataset_blob"

  dataset_name          = "example-dataset"
  data_factory_id       = "your-data-factory-id"
  linked_service_name   = "your-linked-service-name"
  
  path                  = "input/files/"
  filename              = "example-file.csv"

  parameters = {
    param1 = "value1"
    param2 = "value2"
  }

  description           = "Example Azure Blob dataset"
  folder                = "example-folder"

  dynamic_path_enabled  = true
  dynamic_filename_enabled = false

  schema_columns = [
    {
      name = "column1"
      type = "String"
    },
    {
      name = "column2"
      type = "Int32"
    }
  ]
}
*/


