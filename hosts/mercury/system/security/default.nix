{ ... }:

{
  imports = [
    ./gpg-ssh-keys.nix
    ./polkit.nix
    ./tpm2.nix
  ];

  security.rtkit.enable = true;
}