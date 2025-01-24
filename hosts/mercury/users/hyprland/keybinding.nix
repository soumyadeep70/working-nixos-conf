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
    "$mainMod SHIFT, Q, exec, hyprctl activewindow | grep pid | tr -d 'pid:'| xargs kill"
    "$mainMod, F, fullscreen, 0"
    "$mainMod, M, fullscreen, 1"
    "$mainMod, T, togglefloating"
    "$mainMod SHIFT, T, workspaceopt, allfloat"
    "$mainMod, J, togglesplit"
    "$mainMod, left, movefocus, l"
    "$mainMod, right, movefocus, r"
    "$mainMod, up, movefocus, u"
    "$mainMod, down, movefocus, d"
    "$mainMod SHIFT, right, resizeactive, 100 0"
    "$mainMod SHIFT, left, resizeactive, -100 0"
    "$mainMod SHIFT, down, resizeactive, 0 100"
    "$mainMod SHIFT, up, resizeactive, 0 -100"
    "$mainMod, G, togglegroup"
    "$mainMod, K, swapsplit"

    "$mainMod, 1, workspace, 1"
    "$mainMod, 2, workspace, 2"
    "$mainMod, 3, workspace, 3"
    "$mainMod, 4, workspace, 4"
    "$mainMod, 5, workspace, 5"
    "$mainMod, 6, workspace, 6"
    "$mainMod, 7, workspace, 7"
    "$mainMod, 8, workspace, 8"
    "$mainMod, 9, workspace, 9"
    "$mainMod, 0, workspace, 10"

    "bind = $mainMod, Tab, workspace, m+1"
    "bind = $mainMod SHIFT, Tab, workspace, m-1"

    "$mainMod SHIFT, 1, movetoworkspace, 1"
    "$mainMod SHIFT, 2, movetoworkspace, 2"
    "$mainMod SHIFT, 3, movetoworkspace, 3"
    "$mainMod SHIFT, 4, movetoworkspace, 4"
    "$mainMod SHIFT, 5, movetoworkspace, 5"
    "$mainMod SHIFT, 6, movetoworkspace, 6"
    "$mainMod SHIFT, 7, movetoworkspace, 7"
    "$mainMod SHIFT, 8, movetoworkspace, 8"
    "$mainMod SHIFT, 9, movetoworkspace, 9"
    "$mainMod SHIFT, 0, movetoworkspace, 10"
  ];

  bindm = [
    "$mainMod, mouse:272, movewindow"
    "$mainMod, mouse:273, resizewindow"
  ];
}