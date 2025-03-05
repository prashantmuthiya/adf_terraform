locals {
  resource_group_name      = "example-resource-group"
  location                = "North Europe"
  account_tier            = "Standard"
  account_replication_type = "LRS"
  VnetSpokeRGName         = "example-vnet-rg"
  VnetSpokeName           = "example-vnet"
  VnetSpokePESubnetName   = "example-subnet"
  tags = {
    environment = "production"
    project     = "example-project"
  }
}