{ username, inputs, ... }:

{
  imports = [
    ./hyprland
    ./terminal
    ./file-manager
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.backupFileExtension = "backup";

  # watch out!!
  home-manager.users.${username}.home.stateVersion = "24.11";
}