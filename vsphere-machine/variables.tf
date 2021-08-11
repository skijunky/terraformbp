variable "vsphere_datacenter" {
  type = string
  default = "RegionA01"
}

variable "vsphere_resource_pool" {
  type = string
  default = "RegionA01-COMP02/Resources"
}

variable "vsphere_datastore" {
  type = string
  default = "Region01a-NFS02"
}

variable "vm_template" {
  type = string
  default = "cbase-init-ubuntu-18"
}

variable "vm_hostname" {
  type = string
  default = "testvm"
}

variable "vm_cpu_count" {
  type = string
  default = "1"
}

variable "vm_ram_count" {
  type = string
  default = "1024"
}

variable "vm_linked_clone" {
  type = bool
  default = false
}

variable "vsphere_network" {
  type = string
  default = "VM Network"
}

variable "vm_domain" {
  type = string
  default = "corp.local"
}

variable "vm_ipv4_address" {
  type = string
  default = "192.168.110.245"
}

variable "vm_ipv4_netmask" {
  type = string
  default = "24"
}

variable "vm_ipv4_gateway" {
  type = string
  default = "192.168.110.1"
}
variable "vsphere_user" {
  type = string
  default = "administrator@corp.local"
}  
variable "vsphere_server" {
  type = string
  default = "vcsa-01a.corp.local"
} 
variable "vsphere_password" {
  type = string
  default = "VMware1!"
}
