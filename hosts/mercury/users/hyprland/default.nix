{ username, ... }:

let
  monitor = import ./monitor.nix;
  window = import ./window.nix;
  animation = import ./animation.nix;
  input = import ./input.nix;
  keybinding = import ./keybinding.nix;
  hyprland-conf = monitor // window // animation // input // keybinding;
in
{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  
  home-manager.users.${username} = { ... }: {

    imports = [
      ./environment-vars.nix
    ];

    wayland.windowManager.hyprland = {
      enable = true;
      systemd.enable = false;
      settings = hyprland-conf;
    };
  };
}