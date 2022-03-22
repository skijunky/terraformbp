terraform {
  required_providers {
    vra = {
      source  = "vmware/vra"
    }
  }
  required_version = ">= 0.13.0"
}

provider vra {
  url                           = "https://api.mgmt.cloud.vmware.com"
  refresh_token                 = "xHTpNYgEjBSZTYQyccjOFqlYN7UQ9Q4FBqFHOuFbAZeQg067tNXhsHa367AsJr63"
  insecure                      = true
}

variable "zone_name" {
  type = string
  default = "CMBU-DEMO-861 / RegionA01"
}

variable "project_name" {
  type = string
  default = "Terraform"
}

variable "blueprint_name" {
  type = string
  default = "tf-machine"
}

resource "random_integer" "suffix" {
  min = 1
  max = 50000
}

resource "vra_blueprint" "this" {
  name        = format("%s-%d", var.blueprint_name, random_integer.suffix.result)
  description = "Created by vRA terraform provider"

  project_id = vra_project.this.id

  content = <<-EOT
    formatVersion: 1
    inputs:
      image:
        type: string
        description: "Image"
        default: centos7
        enum:
          - ubuntu
          - windows2016
          - centos7
      flavor:
        type: string
        description: "Flavor"
        default: small
        enum:
          - small
          - medium
          - large
    resources:
      Machine:
        type: Cloud.Machine
        properties:
          image: $${input.image}
          flavor: $${input.flavor}
  EOT
}

// Example to create a blueprint version and release it
resource "vra_blueprint_version" "this" {
  blueprint_id = vra_blueprint.this.id
  description  = "Released from vRA terraform provider"
  version      = (random_integer.suffix.result / random_integer.suffix.result)
  release      = true
  change_log   = "First version"
}
