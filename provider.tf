provider "zabbix" {
  user       = var.admin_user
  password   = var.admin_password
  server_url = "http://${var.external-ip}:${var.external_http_port}/zabbix/api_jsonrpc.php"
}