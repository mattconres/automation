resource "proxmox_vm_qemu" "test1" {
    name = "test1"
    desc = "test server"
    vmid = "300"
    target_node = "A-1"

    clone = "Backup"
    cores = 2
    sockets = 2
    cpu = "host"
    memory = 8192

    network {
        bridge = "vmbr100"
        model = "virtio"
    }

    disk {
        storage = "local"
        type = "scisi0"
        size = "230G"
    }

    os_type = "cloud-init"
    ipconfig0 = "ip=192.168.1.137,gw=192.168.1.1"
    nameserver = "8.8.8.8"
}