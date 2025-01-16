{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;
    settings = {
      
      # General window settings
      general = {
        gaps_in = "10";
        gaps_out = "14";
        border_size = "3";
        "col.active_border" = "rgba(eb6dedff)";
        "col.inactive_border" = "rgba(ffffffff)";
        layout = "dwindle";
        resize_on_border = true;
      };

    };
  };
}
