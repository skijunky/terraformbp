terraform {
  required_providers {
    vra = {
      source  = "vmware/vra"
    }
  }
  required_version = ">= 0.12.29"
}

provider "vra" {
  url           = var.url
  refresh_token = var.refresh_token
  insecure      = true
}

resource "random_integer" "suffix" {
  min = 1
  max = 50000
}

resource "vra_deployment" "this" {
  name        = var.deployment_name
  description = "Deployment description"

  catalog_item_id      = var.catalog_item_id
  catalog_item_version = var.catalog_item_version
  project_id           = var.project_id

  inputs = {
    flavor = "small"
    image  = "ubuntu"
    count  = 1
    flag   = false
    number = 10.0
    arrayProp = jsonencode(["foo", "bar", "where", "waldo"])
    objectProp = jsonencode({ "key1": "value1", "key2": [1, 2, 3, 4] })
  }

  timeouts {
    create = "30m"
    delete = "30m"
    update = "30m"
  }
}