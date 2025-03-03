variable "data_factory_name" {
  default = "example-adf"
}

variable "resource_group_name" {
  default = "example-rg"
}

variable "location" {
  default = "East US"
}

variable "tags" {
  type    = map(string)
  default = {
    environment = "dev"
    project     = "example"
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
    account_name    = "example-account"
    branch_name     = "main"
    git_url         = "https://github.com/example/repo"
    repository_name = "example-repo"
    root_folder     = "/"
  }
}

variable "vsts_configuration" {
  type = map(string)
  default = {
    account_name    = "example-vsts"
    branch_name     = "main"
    project_name    = "example-project"
    repository_name = "example-repo"
    root_folder     = "/"
    tenant_id       = "example-tenant-id"
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
  default = "example-key-id"
}

variable "customer_managed_key_identity_id" {
  default = "example-identity-id"
}


