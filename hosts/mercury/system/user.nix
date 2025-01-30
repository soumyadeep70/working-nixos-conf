{ username, ... }:

{
  users.users.${username} = {
    homeMode = "755";
    isNormalUser = true;
    description = "Primary User";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
      "scanner"
      "lp"
    ];
  };
}