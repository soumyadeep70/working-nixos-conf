{
  binds = {
    workspace_back_and_forth = true;
    allow_workspace_cycles = true;
    pass_mouse_when_bound = false;
  };

  "$mainMod" = "SUPER";
  bind = [
    "$mainMod, RETURN, exec, kitty"
    "$mainMod, Q, killactive" 
  ];
}