{ lib, ... }:

let 
  envFile = ".config/uwsm/env";
  env-hyprlandFile = ".config/uwsm/env-hyprland";
  toEnvFormat = attrs:
    let
      mkEntry = key:
        let
          value = if lib.isString attrs.${key} then
            "'${attrs.${key}}'"
          else
            toString attrs.${key};
        in
          "export ${key}=${value}";
    in
      lib.concatStringsSep "\n" (map mkEntry (lib.attrNames attrs));
in
{
  home.file.${envFile}.text = toEnvFormat {
    AMAZE = "hyprland";
    POOP = "sway";
    SIZE = 28;
    SCORE = 3.14;
  };
}