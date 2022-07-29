variable "ssh_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWdOTMka/sNKNp4G10zSipwBrVUNQd/YaIooS63T3thuZytsgcX8o3KjogAPNKFD8ltdlwJWjFBvNrv9pqVELfWCg/lcPNaQwmL/fT+eGqZ7Qlb7v1/628r+ZeNf+BlXbB1SONzYSL/1niUUjfYjazo5wygRpGFGt2nGKmCkMuEHMc9akYiX2jw6LaYCWDsTS403C7t8tVBHW4wuyZk0U/Ea1pjGNcgRxCYL5pY1jzGjvfAEPM8XBPbe5OuFH9fDby51KwwixNDKZ6KWwHp0M552owvd7wbwVxjBfAeTjx3R667vKWNF1iA5+6b3rYLll6ooa5qzSDGgwtolgHD6Bc2MtJ38u+jaRCjvodM3ZebSb/sirZkjeAOK/N84z7u/kYWNyHlOHwEL5oZG0D5uUx398NuQQhGZumZuypsT/8shIxq0nJreW2xgPiCFPBEPrTyRcn12ZBi3Ol3GCgfyV4RuDU+80rXu9zXOXgpxPgh6ykpQAAI/Qe43mhZA+iPPk= root@te1"
}

variable "proxmox_host" {
    default = "te1"
}

variable "template_name" {
    default = "ubuntu-2004-cloudinit-template"
}
