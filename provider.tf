provider "zabbix" {
  user       = var.admin_name
  password   = var.admin_password
  server_url = "http://${var.external_ip}:${var.external_http_port}/zabbix/api_jsonrpc.php"
}