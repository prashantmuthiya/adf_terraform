variable "data_factory_id" {}
variable "connection_string" {}
variable "integration_runtime_name" {}
variable "use_key_vault" {
  default = false
}
variable "key_vault_linked_service_name" {
  default = ""
}
variable "sas_token_secret_name" {
  default = ""
}
variable "parameters" {
  type    = map(string)
  default = {}
}
variable "annotations" {
  type    = list(string)
  default = []
}
