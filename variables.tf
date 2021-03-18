variable "external_ip" {
  type        = string
  description = "Zabbix external IP"
}

variable "external_http_port" {
  type        = number
  description = "Zabbix external HTTP port"
}

variable "admin_name" {
  type        = string
  description = "Zabbix Admin name"
  default     = "Admin"
}

variable "admin_password" {
  type        = string
  description = "Zabbix admin password"
  default     = "zabbix"
}

variable "linux_hosts" {
  type = list(object({
    name  = string
    ip    = string
  }))

  description = "List of Linux hosts"
  default = []
}

variable "windows_hosts" {
  type = list(object({
    name  = string
    ip    = string
  }))

  description = "List of Windows hosts"
  default = []
}