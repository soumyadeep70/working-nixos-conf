{ pkgs, ... }:

let
  inherit (import ../../../settings.nix) wallpaper-dir;
in 
{
  # home.packages = with pkgs; [
  #   rose-pine-gtk-theme
  #   rose-pine-icon-theme
  #   fira-code
  #   bibata-cursors
  # ];

  fonts.fontconfig.enable = true;

  home.file."${wallpaper-dir}" = {
    source = ./wallpapers;
    recursive = true;
  };

  gtk = {
    enable = true;
    theme.name = "rose-pine-dawn";
    theme.package = pkgs.rose-pine-gtk-theme;
    iconTheme.name = "rose-pine-dawn-icons";
    iconTheme.package = pkgs.rose-pine-icon-theme;
    font.name = "Fira Code SemiBold";
    font.size = 12;
    font.package = pkgs.fira-code;
    cursorTheme.name = "Bibata Modern Ice";
    cursorTheme.size = 24;
    cursorTheme.package = pkgs.bibata-cursors;
  };
}