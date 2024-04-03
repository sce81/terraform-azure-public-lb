resource "azurerm_public_ip" "main" {
  name                = "${var.name}-public-ip"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  allocation_method   = "Static"
  domain_name_label   = "${data.azurerm_resource_group.main.name}-${random_string.random.result}"

  tags = merge(
    local.common_tags, var.extra_tags,
  )
}

resource "azurerm_lb" "main" {
  name                = "${var.name}-public-lb"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  sku                 = var.lb_sku
  sku_tier            = var.lb_sku_tier

  frontend_ip_configuration {
    name  = "${var.name}-public-ip"
    zones = var.lb_zones
    public_ip_address_id = azurerm_public_ip.main.id
  }
  tags = merge(
    local.common_tags, var.extra_tags,
  )
}



resource "azurerm_lb_rule" "example" {
  loadbalancer_id                = azurerm_lb.main.id
  name                           = "${var.name}-LBRule"
  protocol                       = "Tcp"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.main.id]
  frontend_port                  = var.source_port
  backend_port                   = var.target_port
  frontend_ip_configuration_name = "${var.name}-public-ip"

}

resource "azurerm_lb_backend_address_pool" "main" {
  loadbalancer_id = azurerm_lb.main.id
  name            = "${var.name}-backend-address"
}

resource "random_string" "random" {
  length           = 6
  special          = false
  min_lower        = 6
}


//resource "azurerm_lb_probe" "example" {
//  loadbalancer_id = azurerm_lb.example.id
//  name            = "ssh-running-probe"
//  port            = 22
//}



//resource "azurerm_lb_nat_rule" "main" {
//  //count                          = length(var.remote_port)
//  name                           = "${var.name}-nat-rule"
//  resource_group_name            = data.azurerm_resource_group.main.name
//  loadbalancer_id                = azurerm_lb.main.id
//  protocol                       = var.protocol
//  frontend_port                  = var.source_port
//  backend_port                   = var.target_port
//  frontend_ip_configuration_name = "${var.name}-public-ip"
//}



//resource "azurerm_lb_nat_pool" "main" {
//  resource_group_name            = data.azurerm_resource_group.main.name
//  name                           = "${var.name}-nat-pool"
//  loadbalancer_id                = azurerm_lb.main.id
//  protocol                       = var.nat_pool_proto
//  frontend_port                  = var.nat_pool_port_start
//  backend_port                   = var.nat_pool_backend_port
//  frontend_ip_configuration_name = "${var.name}-public-ip"
//}