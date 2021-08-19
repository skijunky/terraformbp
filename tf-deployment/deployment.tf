resource "vra_deployment" "this" {
  name        = "Terraform Deployment"
  description = "Deployed from vRA provider for Terraform."

  blueprint_id      = "72b618d0-5cf1-4567-9914-002a51561ee1"
  project_id        = "d185daa0-a6e0-44e5-afcf-dbe176be0bce"

  inputs = {
    Flavor = "small"
    Image  = "ubuntu"
  }
}