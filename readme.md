<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurecaf"></a> [azurecaf](#requirement\_azurecaf) | 2.0.0-preview3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.29.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurecaf"></a> [azurecaf](#provider\_azurecaf) | 2.0.0-preview3 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.29.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurecaf_name.function](https://registry.terraform.io/providers/aztfmod/azurecaf/2.0.0-preview3/docs/resources/name) | resource |
| [azurerm_application_insights.function](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights) | resource |
| [azurerm_linux_function_app.function](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) | resource |
| [azurerm_resource_group.function](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group_policy_exemption.function_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group_policy_exemption) | resource |
| [azurerm_role_assignment.function_to_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_service_plan.function](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |
| [azurerm_storage_account.function](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"westeurope"` | no |
| <a name="input_policy_assignment_ids_to_exempt"></a> [policy\_assignment\_ids\_to\_exempt](#input\_policy\_assignment\_ids\_to\_exempt) | Policy assignment IDs that need an exemption | `set(string)` | `[]` | no |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | Purpose is used in the naming of the resources | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_app"></a> [function\_app](#output\_function\_app) | The created Linux function app |
| <a name="output_resource_group"></a> [resource\_group](#output\_resource\_group) | Resource group of all the resources created by this module |
| <a name="output_service_plan"></a> [service\_plan](#output\_service\_plan) | Service Plan used by the function |
| <a name="output_storage_account"></a> [storage\_account](#output\_storage\_account) | Storage account used by the function |
<!-- END_TF_DOCS -->