{ pkgs, ... }:

{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    theme = "catppuccin-mocha";
    autoNumlock = true;
  };

  environment.systemPackages = [
    pkgs.noto-fonts
    (pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      font = "Noto Sans";
      fontSize = "10";
      loginBackground = true;
    })
  ];
}
