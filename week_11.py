#!/bin/env

import subprocess

def list_storage_devices():
  command = "lsblk"
  result = subprocess.run (command, shell=True, stdout=subprocess.PIPE, text=True)
  print(result.stdout)

list_storage_devices()

def check_disk_space(device):
    command = f"df -h {device}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    print(result.stdout)

check_disk_space("/dev/sda1")

def mount_device(device, mount_point):
    command = f"sudo mount {device} {mount_point}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    print(result.stdout)

mount_device("/dev/sdb1", "/mnt/mydisk")

def format_device(device, filesystem_type):
    command = f"sudo mkfs.{filesystem_type} {device}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    print(result.stdout)

def unmount_device(mount_point):
    command = f"sudo umount {mount_point}"
    result = subprocess.run(command, shell=True, stdout=subprocess.PIPE, text=True)
    print(result.stdout)

unmount_device("/mnt/mydisk")
