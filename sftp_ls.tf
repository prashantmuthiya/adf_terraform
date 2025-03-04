resource "azurerm_data_factory_linked_service_sftp" "sftp_linked_service" {
  name                = var.sftp_linked_service_name
  data_factory_id     = var.data_factory_id
  description         = var.description
  host                = var.host
  port                = var.port
  authentication_type = var.authentication_type
  password  = var.password
  username = var.username 
}