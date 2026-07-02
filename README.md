# terraform-module-az-public-lb
Terraform module for creating a public load balancer on Azure

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.15.7 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.79.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.79.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_lb.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_rule.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |
| [azurerm_public_ip.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `any` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | n/a | `map(any)` | `{}` | no |
| <a name="input_lb_sku"></a> [lb\_sku](#input\_lb\_sku) | n/a | `string` | `"Basic"` | no |
| <a name="input_lb_sku_tier"></a> [lb\_sku\_tier](#input\_lb\_sku\_tier) | n/a | `string` | `"Regional"` | no |
| <a name="input_lb_subnet_id"></a> [lb\_subnet\_id](#input\_lb\_subnet\_id) | n/a | `any` | `null` | no |
| <a name="input_lb_zones"></a> [lb\_zones](#input\_lb\_zones) | n/a | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `any` | n/a | yes |
| <a name="input_nat_pool_count"></a> [nat\_pool\_count](#input\_nat\_pool\_count) | n/a | `number` | `3` | no |
| <a name="input_nat_pool_proto"></a> [nat\_pool\_proto](#input\_nat\_pool\_proto) | n/a | `string` | `"Tcp"` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | variable "nat\_pool\_port\_start" {} variable "nat\_pool\_port\_end" {} variable "nat\_pool\_backend\_port" {} | `string` | `"Tcp"` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `any` | n/a | yes |
| <a name="input_source_port"></a> [source\_port](#input\_source\_port) | n/a | `any` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_lb_frontend_ip"></a> [lb\_frontend\_ip](#output\_lb\_frontend\_ip) | n/a |
| <a name="output_lb_pool"></a> [lb\_pool](#output\_lb\_pool) | n/a |
| <a name="output_public_fqdn"></a> [public\_fqdn](#output\_public\_fqdn) | n/a |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
<!-- END_TF_DOCS -->
