variable "vm_name" {
  type        = string
  description = "VM Name"
}

provider "vsphere" {

  # If you have a self-signed cert
  allow_unverified_ssl = false
}

data "vsphere_datacenter" "dc" {
  name = "RegionA01"
}

data "vsphere_datastore" "datastore" {
  name          = "Region01a-NFS03"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_resource_pool" "pool" {
  name          = "Cluster/Resources"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network" {
  name          = "Virtual-Machines"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"

  num_cpus = 1
  memory   = 1024
  guest_id = "other3xLinux64Guest"

  network_interface {
    network_id = "${data.vsphere_network.network.id}"
  }

  disk {
    label = "disk0"
    size  = 10
  }

  wait_for_guest_net_timeout    = -1
}
