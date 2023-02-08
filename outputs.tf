output "lb_pool" {
  value = [azurerm_lb_backend_address_pool.main.id]
}