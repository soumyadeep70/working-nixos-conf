{ inputs, system, host, ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        devices = [ "nodev" ];
        efiSupport = true;
        efiInstallAsRemovable = true;
        configurationName = host;
        useOSProber = true;
        memtest86.enable = true;
        copyKernels = true;
      };
      efi.canTouchEfiVariables = false;
    };
    initrd = {
      enable = true;
      systemd.enable = true;
    };
    plymouth.enable = true;
  };

  imports = [
    inputs.distro-grub-themes.nixosModules.${system}.default
  ];

  distro-grub-themes = {
    enable = true;
    theme = "hp";
  };
}