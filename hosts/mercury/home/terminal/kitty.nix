{ username, ... }:

{
  home-manager.users.${username} = { ... }:
  {
    programs.kitty = {
      enable = true;
      themeFile = "tokyo_night_night";
    };
  };
}