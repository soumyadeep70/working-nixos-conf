{ pkgs, ... }:

{
  xdg = {
    enable = true;
    userDirs.enable = true;
    userDirs.createDirectories = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal
    ];
    configPackages = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
      xdg-desktop-portal
    ];
  };
}