{
  description = "HyprOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/master";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    distro-grub-themes.url = "github:AdisonCavani/distro-grub-themes";
  };

  outputs = { nixpkgs, ... } @inputs:
    let
      inherit (import ./settings.nix) system host username;
    in
    {
      nixosConfigurations = {
        ${host} = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system host username;
          };
          modules = [
            ./system
            ./home
            /etc/nixos/hardware-configuration.nix
          ];
        };
      };
    };
}
