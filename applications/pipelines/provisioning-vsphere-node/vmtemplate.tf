provider "vsphere" {
  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Deploy 2 linux VMs
module "example-server-linuxvm" {
  source        = "Terraform-VMWare-Modules/vm/vsphere"
  version       = "3.5.0"
  vmtemp        = "ocp-template-ocp1-baremetal"
  instances     = 1
  vmname        = "ocp-vm-node"
  dc        = "HIT_RedHat"
  datastore = "VV.HIT-RedHat"
}
