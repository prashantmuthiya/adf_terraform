resource "azurerm_data_factory_dataset_mysql" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name
  table_name          = var.table_name
  folder              = var.folder

  description = var.dataset_description

  dynamic "schema_column" {
    for_each = var.schema_columns
    content {
      name = schema_column.value["name"]
      type = schema_column.value["type"]
    }
  }

  parameters = var.dataset_parameters

  annotations = var.dataset_annotations

  additional_properties = var.dataset_additional_properties
}


/*
# Example usage
module "mysql_dataset" {
  source               = "./path/to/your/module"
  dataset_name         = "example_dataset"
  data_factory_id      = "your_data_factory_id"
  linked_service_name  = "your_linked_service_name"
  table_name           = "your_table_name"
  folder               = "example_folder"
  dataset_description  = "Example MySQL dataset"
  schema_columns       = [
    { name = "column1", type = "string" },
    { name = "column2", type = "int" }
  ]
  dataset_parameters   = { param1 = "value1", param2 = "value2" }
  dataset_annotations  = ["annotation1", "annotation2"]
  dataset_additional_properties = { property1 = "value1" }
}
*/
