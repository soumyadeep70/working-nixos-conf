{ ... }:

{
  xdg.configFile."uwsm/env".text = builtins.readFile ./env;
  xdg.configFile."uwsm/env-hyprland".text = builtins.readFile ./env-hyprland;
}