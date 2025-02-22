{ inputs, username, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
  };
  home-manager.users.${username} = { ... }:
  {
    imports = [
      ./env
      ./hyprland
      ./kitty
      ./themes
      ./xdg
      ./utils
    ];

    home.stateVersion = "24.11";
  };
}