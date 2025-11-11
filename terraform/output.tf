output "frontend_public_ip" {
  value = azurerm_public_ip.frontend_pip.ip_address
}

output "backend_public_ip" {
  value = azurerm_public_ip.backend_pip.ip_address
}

output "mysql_fqdn" {
  value = azurerm_mysql_flexible_server.mysql.fqdn
}

output "mysql_admin_username" {
  value = azurerm_mysql_flexible_server.mysql.administrator_login
}

output "mysql_admin_password" {
  value     = random_password.mysql_admin_password.result
  sensitive = true
}

output "mysql_connection_string" {
  value     = "mysql -h ${azurerm_mysql_flexible_server.mysql.fqdn} -u ${azurerm_mysql_flexible_server.mysql.administrator_login} -p"
  sensitive = true
}
