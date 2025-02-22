{ ... }:

{
  imports = [
    ./core
    ./nix
    ./network
    ./display-manager
    ./virtualisation
    ./user.nix
  ];

  system.stateVersion = "24.11";
}
