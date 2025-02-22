{ pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxKernel.packages.linux_zen;
    kernelParams = [
      "splash"
      "quiet"
      "fbcon=nodefer"
      "vt.global_cursor_default=0"
      "kernel.modules_disabled=1"
      "lsm=landlock,lockdown,yama,integrity,apparmor,bpf,tomoyo,selinux"
      "usbcore.autosuspend=-1"
      "video4linux"
      "acpi_rev_override=5"
      "security=selinux"
    ];
  };
  programs.appimage = {
    enable = true;
    binfmt = true;
  };
}