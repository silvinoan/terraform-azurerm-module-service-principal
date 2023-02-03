<!-- BEGIN_TF_DOCS -->
# Terraform AzureRM: Service Principal

Terraform Module for Creation and Rotation of Service Principals.

[![Terraform Validate](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-validate.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-validate.yml)
[![Terraform Docs](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-docs.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/terraform-docs.yml)
[![Checkov Validation](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/checkov.yml/badge.svg)](https://github.com/BancoArbi/terraform-azurerm-module-service-principal/actions/workflows/checkov.yml)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.33 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.41 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.16 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~> 0.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.33.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.41.0 |
| <a name="provider_github"></a> [github](#provider\_github) | 5.16.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |

## Resources

| Name | Type |
|------|------|
| [azuread_application.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_service_principal.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_service_principal_password.these](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal_password) | resource |
| [azurerm_role_assignment.contributor_on_subscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [github_actions_organization_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret) | resource |
| [time_rotating.secret_renewal](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/rotating) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_index"></a> [application\_index](#input\_application\_index) | (Optional) Override default sequential at the end of the Application's Display Name, e.g. "001". | `string` | `"001"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (Optional) Environment to which the Service Principal should be deployed. | `string` | `"dev1"` | no |
| <a name="input_management_group"></a> [management\_group](#input\_management\_group) | (Optional) Azure's Management Group to which the Service Principal should be deployed. | `string` | `"cross"` | no |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | (Optional) What is the purpose of this Service Principal in a maximum of 3 characters, e.g. "Workflow" as "wf". | `string` | `"wf"` | no |
| <a name="input_secret_quantity"></a> [secret\_quantity](#input\_secret\_quantity) | (Optional) How many secrets should be deployed for this Service Principal, max value is 10. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_information"></a> [application\_information](#output\_application\_information) | Created Application's Information. |
| <a name="output_secrets"></a> [secrets](#output\_secrets) | Created Secrets' Information. |
<!-- END_TF_DOCS -->