# Minimal OS as placeholder

This is a extreme minimal OS to use as a placeholder in Proxmox or other virtualization platforms as a placeholder for managing VM depdendencies.

It boot instantly, use almost no RAM / CPU (Proxmox requires a minimal of 16MB RAM though) and does not require any disk space.

## Usage
Download this image with wget on the Proxmox host:

```bash
wget https://github.com/wsmlby/miniboot/raw/refs/heads/master/minimal-os.raw
```

then, create a VM with minimal resouce, no disk, no network. note the VM ID. Make sure you delete the DVD drive from the vm if it was created by default.

Then, run the following command to import the image:

```bash
qm importdisk <VMID> /path/to/minimal-os.raw local-lvm
qm set <VMID> --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-<VMID>-disk-0
```

Now you can start the VM, it will boot instantly and show a simple message. You can use this VM as a placeholder for managing dependencies or testing purposes.

## Build from source

```
nasm -f bin minimal-os.asm -o minimal-os.raw
```

## Credits
This project is inspired by the work of [@cfenollosa](https://github.com/cfenollosa/os-tutorial/tree/master)



