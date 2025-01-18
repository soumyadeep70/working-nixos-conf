{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    settings = {

      general = {
        gaps_in = 5;
        gaps_out = 7;
        border_size = 2;
        "col.active_border" = "rgba(eb6dedff)";
        "col.inactive_border" = "rgba(ffffffff)";
        layout = "dwindle";
        resize_on_border = true;
      };

      decoration = {
        rounding = 6;
        active_opacity = 1.0;
        inactive_opacity = 0.8;
        fullscreen_opacity = 1.0;
        blur = {
          
        };
      };

    };
  };
}
