{ ... }:

{
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
  services.gnome.gnome-keyring.enable = true;
  programs.seahorse.enable = true;
}