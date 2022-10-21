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
  default = "CMBU-DEMO-882 / RegionA01"
}

variable "project" {
  type = string
  default = "TRW-CMBU-DEMO-8.8"
}

variable "image_name" {
  type = string
  default = "ubuntu-18"
}

variable "network_name" {
  type = string
  default = "VM Network"
}
