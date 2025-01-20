{ username, pkgs, ... }:

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
    packages = with pkgs; [
      kitty
      vscode
      nixd
    ];
  };
}