variable "VRA_REFRESH_TOKEN" {
  type = string
  default = "xHTpNYgEjBSZTYQyccjOFqlYN7UQ9Q4FBqFHOuFbAZeQg067tNXhsHa367AsJr63"
}

variable "VRA_URL" {
  type = string
  default = "https://api.mgmt.cloud.vmware.com"
}

variable "vsphere_datacenter" {
  type = string
  default = "vcsa-01a"
}

variable "region" {
  type = string
  default = "RegionA01"
}

variable "zone" {
  type = string
  default = "cmbu-demo-84/RegionA01"
}

variable "project" {
  type = string
  default = "Field Demo"
}

variable "image_name" {
  type = string
  default = "centos7"
}

variable "network_name" {
  type = string
  default = "VM Network"
}
