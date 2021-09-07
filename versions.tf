terraform {

  required_providers {
    zabbix = {
      source  = "claranet/zabbix"
      version = "~> 0.2" 
    }
  }

  required_version = "~> 1"
}
