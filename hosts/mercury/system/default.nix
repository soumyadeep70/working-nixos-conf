{ ... }:

{
  imports = [
    ./core
    ./nix
    ./security
    ./services
  ];

  # Watch out!!
  system.stateVersion = "24.11";
}