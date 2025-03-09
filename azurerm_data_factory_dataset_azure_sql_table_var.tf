variable "dataset_name" {
  description = "The name of the Azure SQL table dataset."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "linked_service_id" {
  description = "The ID of the linked service."
  type        = string
  default     = null
}


variable "table_name" {
  description = "The name of the SQL table."
  type        = string
  default     = null
}

variable "annotations" {
  description = "Annotations for the dataset."
  type        = list(string)
  default     = null
}

variable "dataset_description" {
  description = "Description of the dataset."
  type        = string
  default     = null
}

variable "schema_columns" {
  description = "Schema columns for the dataset."
  type = list(object({
    name = string
    type = string
  }))
  default     = null
}

variable "parameters" {
  description = "Optional parameters for the dataset."
  type = list(object({
    name  = string
    value = string
  }))
  default = null
}

variable "additional_properties" {
  description = "Additional properties for the dataset."
  type        = map(string)
  default     = null
}

variable "folder" {
  description = "The folder in which the dataset is located."
  type        = string
  default     = null
}

/*
module "azure_sql_table_dataset" {
  source              = "./path/to/your/module"
  dataset_name        = "example_dataset"
  data_factory_id     = "your_data_factory_id"
  linked_service_id   = "your_linked_service_id"
  table_name          = "example_table"
  annotations         = ["example_annotation"]
  dataset_description = "An example Azure SQL table dataset"
  schema_columns = [
    {
      name = "Column1"
      type = "String"
    },
    {
      name = "Column2"
      type = "Int"
    }
  ]
  parameters = [
    {
      name  = "param1"
      value = "value1"
    },
    {
      name  = "param2"
      value = "value2"
    }
  ]
  additional_properties = {
    property1 = "value1"
    property2 = "value2"
  }
  folder = "example_folder"
}
*/
