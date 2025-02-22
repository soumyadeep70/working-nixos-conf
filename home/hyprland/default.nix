{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    extraConfig = builtins.readFile ./hyprland.conf;
  };
}