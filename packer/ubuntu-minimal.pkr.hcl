source "qemu" "ubuntu" {
  iso_url     = "https://releases.ubuntu.com/24.04/ubuntu-24.04-live-server-amd64.iso"
  output_directory = "output-qcow2"
  disk_interface   = "virtio"
  format           = "qcow2"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
  headless         = true

  communicator = "ssh"
  ssh_username = "mpvpn"
  ssh_password = "mpvpn"
}

build {
  sources = ["source.qemu.ubuntu"]

  provisioner "shell" {
    script = "../scripts/setup.sh"
  }
}
