{ lib, ... }:

let 
  envFile = ".config/uwsm/env";
  env-hyprlandFile = ".config/uwsm/env-hyprland";
  toEnvFormat = attrs: lib.concatStringsSep "\n" (map (name: "export ${name}='${attrs.${name}}'") (lib.attrNames attrs));
in
{
  home.file.${envFile}.text = toEnvFormat {
    AMAZE = "hyprland";
    POOP = "sway";
  };
}