variable "url" {
  type = string
  default = "https://api.mgmt.cloud.vmware.com"
}

variable "refresh_token" {
  type = string
  default = "xHTpNYgEjBSZTYQyccjOFqlYN7UQ9Q4FBqFHOuFbAZeQg067tNXhsHa367AsJr63"
}

variable "zone_name" {
  type = string
  default = "CMBU-DEMO-861 / RegionA01"
}

variable "project_name" {
  type = string
  default = "Terraform-45023"
}

variable "blueprint_name" {
  type = string
  default = "tf-machine"
}

variable "catalog_source_name" {
  type = string
  default = "tf-catalog-45023"
}

variable "catalog_item_name" {
   type = string
   default = "tf-machine-45023"

variable "deployment_name" {
  type = string
  default = "tonys"
}