{ ... }:

{
  system.stateVersion = "24.11";

  imports = [
    ./kernel.nix
    ./bootloader.nix
    ./drivers.nix
  ];
}
