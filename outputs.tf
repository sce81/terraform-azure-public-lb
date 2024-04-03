output "lb_pool" {
  value = [azurerm_lb_backend_address_pool.main.id]
}
output "id" {
  value = azurerm_lb.main.id
}

output "lb_frontend_ip" {
  value = azurerm_lb.main.frontend_ip_configuration
}

output "public_ip" {
  value = azurerm_public_ip.main.ip_address
}

output "public_fqdn" {
  value = azurerm_public_ip.main.reverse_fqdn
}

