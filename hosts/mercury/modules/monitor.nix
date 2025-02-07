{ config, lib, pkgs, ... }:

let
  cfg = config.hynix.monitor;
in
{
  options = {
    hynix.monitor = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = "Enable monitor configuration";
      };
      
      monitors = lib.mkOption {
        type = with lib.types; nullOr listOf submodule {
          name = mkOption { type = lib.types.str; };
          resolution = mkOption { type = lib.types.str; };
          refreshRate = mkOption { type = lib.types.int; };
          position = mkOption { type = with lib.types; nullOr str; default = null; };
          scale = mkOption { type = lib.types.int; default = 1; };
        };
        default = null;
      };
    };

    config = lib.mkIf cfg.enable {
      config.wayland.windowManager.hyprland.settings =
        config.wayland.windowManager.hyprland.settings // {
          monitor = [ "HDMI-A-1,1920x1080@100,auto,1" ];
        };
    };
  };
}