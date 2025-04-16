source "qemu" "ubuntu-minimal" {
  iso_url      = "https://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso"
  iso_checksum = "sha256:9bc6028870aef3f74f4e16b900008179e78b130e6b0b9a140635434a46aa98b0"
  output_directory = "output-qemu"
  vm_name        = "ubuntu-minimal-vm"
  disk_size      = 10240  # Größe der Festplatte in MB
  format         = "qcow2"
  cpus           = 2  # Anzahl der CPUs
  memory         = 2048  # Arbeitsspeicher in MB
}

build {
  sources = ["source.qemu.ubuntu-minimal"]
}
