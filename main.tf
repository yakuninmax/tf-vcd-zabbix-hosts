# Create Zabbix Windows host group
resource "zabbix_host_group" "windows-group" {
  name = "Windows servers"
}

# Create Zabbix Linux hosts
resource "zabbix_host" "linux-host" {
  count = length(var.linux_hosts)

  host = var.linux_hosts[count.index].ip
  name = var.linux_hosts[count.index].name
  
  interfaces {
    ip   = var.linux_hosts[count.index].ip
    main = true
  }
  
  groups    = ["Linux servers"]
  templates = ["Template OS Linux by Zabbix agent"] 
}

# Create Zabbix Windows hosts
resource "zabbix_host" "windows-host" {
  count = length(var.windows_hosts)

  host = var.windows_hosts[count.index].ip
  name = upper(var.windows_hosts[count.index].name)
  
  interfaces {
    ip   = var.windows_hosts[count.index].ip
    main = true
  }
  
  groups    = [zabbix_host_group.windows-group.name]
  templates = ["Template OS Windows by Zabbix agent"] 
}