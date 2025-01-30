{ ... }:

{
  imports = [
    ./nix
    ./bootloader
    ./kernel
    ./drivers
    ./hardware
    ./network
    ./security
    ./display-manager
    ./virtualisation
    ./user.nix
  ];

  system.stateVersion = "24.11";
}