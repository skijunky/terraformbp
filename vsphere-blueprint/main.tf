terraform {
  required_providers {
    vra = {
      source  = "vmware/vra"
    }
  }
  required_version = ">= 0.12.29"
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
  name        = var.blueprint_name
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
