{ pkgs, ... }:

{
  imports = [
    ./grub.nix
  ];

  environment.systemPackages = with pkgs; [
    efibootmgr
  ];
}