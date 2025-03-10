resource "azurerm_data_factory_linked_service_sftp" "example" {
  name            = var.sftp_linked_service_name
  data_factory_id = var.data_factory_id
  description     = var.description

  authentication_type = var.authentication_type
  host                = var.host
  port                = var.port
  username            = var.username

  password            = var.password

  integration_runtime_name     = var.integration_runtime_name
  annotations                  = var.annotations
  parameters                   = var.parameters
  host_key_fingerprint         = var.host_key_fingerprint
 # skip_host_key_fingerprint    = var.skip_host_key_fingerprint

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}
