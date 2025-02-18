terraform {
  backend "http" {
  }
}

module "cluster" {
  source                       = "github.com/danielvelasquez/terraform-azurerm-multitier-app-template"
  subscription_id              = var.subscription_id
  backend_client_id            = var.backend_client_id
  backend_client_secret        = var.backend_client_secret
  backend_ssh_key              = var.backend_ssh_key
  location                     = var.location
  kubernetes_version           = var.kubernetes_version
  resource_group_name          = var.resource_group_name
  environment                  = var.environment
  tenant_id                    = var.tenant_id 
  db_name                      = var.db_name
}