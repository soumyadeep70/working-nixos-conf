{ host, ... }:

{
  networking = {
    networkmanager.enable = true;
    hostName = host;
  };
}