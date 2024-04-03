variable "name" {}
variable "resource_group" {}
variable "environment" {}
variable "lb_sku" { default = "Basic" }
variable "lb_sku_tier" { default = "Regional" }
variable "lb_zones" {
  type    = list(string)
  default = []
}
variable "lb_subnet_id" { default = null }
variable "nat_pool_count" { default = 3 }
variable "nat_pool_proto" { default = "Tcp" }
//variable "nat_pool_port_start" {}
//variable "nat_pool_port_end" {}
//variable "nat_pool_backend_port" {}
variable "protocol" { default = "Tcp" }
variable "source_port" {}
variable "target_port" {}
variable "extra_tags" {
  type    = map(any)
  default = {}
}