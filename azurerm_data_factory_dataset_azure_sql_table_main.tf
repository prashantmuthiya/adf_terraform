resource "azurerm_data_factory_dataset_azure_sql_table" "dataset_azure_sql_table" {
  name              = var.dataset_name
  data_factory_id   = var.data_factory_id
  linked_service_id = var.linked_service_id
  table             = var.table_name

  annotations = var.annotations
  description = var.dataset_description

  dynamic "schema_column" {
    for_each = var.schema_columns != null ? var.schema_columns : []
    content {
      name = schema_column.value.name
      type = schema_column.value.type
    }
  }
  parameters = var.parameters

  additional_properties = var.additional_properties
  folder                = var.folder
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
  parameters = parameters_name 
  ]
  additional_properties = {
    property1 = "value1"
    property2 = "value2"
  }
  folder = "example_folder"
}
*/


