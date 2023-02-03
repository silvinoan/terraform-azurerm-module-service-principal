/**
 * # Terraform AzureRM: Service Principal
 *
 * Terraform Module for Creation and Rotation of Service Principals.
 *
 * [![Terraform Validate](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-validate.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-validate.yml)
 * [![Terraform Docs](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-docs.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-docs.yml)
 * [![Checkov Validation](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/checkov.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/checkov.yml)
 */

terraform {
  required_version = "~> 1.3"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.33"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.41"
    }

    github = {
      source  = "integrations/github"
      version = "~> 5.16"
    }

    time = {
      source  = "hashicorp/time"
      version = "~> 0.9"
    }
  }
}

provider "azurerm" {
  features {}
}
