terraform {
    required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = "2.7.4"
        }
    }
}

//conect to proxmox
provider "proxmox" {
    pm_api_url = "https://amp5.elga.net.id:8006/api2/json"
    pm_api_token_id = "tf_kube@pam!tf_token_id"
    pm_api_token_secret = "token"
    pm_tls_insecure = "true"
}

resource "proxmox_vm_qemu" "proxmox-ubuntu" {
    count = 1 //1 untuk create & 0 untuk delete
    name = "terraform-vm-${count.index + 1}" //Create VM
    target_node = "te1"
    clone = "ubuntu-2004-cloudinit-template"

    agent = 1
    os_type = "cloud-init"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 2048
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"

    disk {
        slot = 0
        size = "10G"
        type = "scsi"
        storage = "local"
    }

    network {
        model = "virtio"
        bridge = "vmbr1"
    }

    lifecycle {
        ignore_changes = [
          network,
        ]
      }
      ipconfig0 = "ip=172.26.0.12${count.index + 1}/24,gw=172.26.0.1"

      sshkeys = <<EOF
      ${var.ssh_key}
      EOF
    
}
