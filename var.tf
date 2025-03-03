variable "data_factory_name" {
  default = "adf"
}

variable "resource_group_name" {
  default = "rg"
}

variable "location" {
  default = "East US"
}

variable "tags" {
  type    = map(string)
  default = {
    environment = "dev"
    project     = "project-name"
  }
}

variable "identity" {
  type = map(string)
  default = {
    type = "SystemAssigned"
  }
}

variable "github_configuration" {
  type = map(string)
  default = {
    account_name    = "account"
    branch_name     = "main"
    git_url         = "https://ADO/Project/repo"
    repository_name = "repo"
    root_folder     = "/"
  }
}

variable "vsts_configuration" {
  type = map(string)
  default = {
    account_name    = "vsts"
    branch_name     = "main"
    project_name    = " project"
    repository_name = " repo"
    root_folder     = "/"
    tenant_id       = "tenant-id"
  }
}

variable "global_parameters" {
  type = map(string)
  default = {
    param1 = "value1"
    param2 = "value2"
    param3 = "value3"
  }
}

variable "managed_virtual_network_enabled" {
  default = true
}

variable "public_network_enabled" {
  default = false
}

variable "customer_managed_key_id" {
  default = " key-id"
}

variable "customer_managed_key_identity_id" {
  default = " identity-id"
}


