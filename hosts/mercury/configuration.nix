{ username, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nix
    ./system
    ./security
    ./services
    ./display
    ./users/${username}.nix
  ];

  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.11";
}

