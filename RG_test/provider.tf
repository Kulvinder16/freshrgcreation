terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rgkulvinder"
    storage_account_name = "stgkulvinder1"         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "container1"            # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0bc661e3-3fc6-4649-92e7-740d5c1311fb"
}