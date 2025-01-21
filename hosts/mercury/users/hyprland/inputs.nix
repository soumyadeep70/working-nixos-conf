{
  input = {
    kb_layout = "us";
    numlock_by_default = true;
    follow_mouse = 1;
    mouse_refocus = false;
    sensitivity = 0;
    touchpad = {
      natural_scroll = false;
      scroll_factor = 1.0;
    };
  };

  gestures = {
    workspace_swipe = true;
    workspace_swipe_fingers = 3;
    workspace_swipe_distance = 500;
    workspace_swipe_invert = true;
    workspace_swipe_min_speed_to_force = 30;
    workspace_swipe_cancel_ratio = 0.5;
    workspace_swipe_create_new = true;
    workspace_swipe_forever = true;
  };

  cursor = {
    no_hardware_cursors = true;
  };
}