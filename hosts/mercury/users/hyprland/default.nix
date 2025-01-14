{ username, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  
  home-manager.users.${username} = { ... }: {
    imports = [
      ./hyprland.nix
      ./environment-vars.nix
    ];
  };
}