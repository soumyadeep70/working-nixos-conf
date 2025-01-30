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
      system = "x86_64-linux";
      inherit (import ./settings.nix) host username;
    in
    {
      nixosConfigurations = {
        ${host} = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system host username;
          };
          modules = [
            ./hosts/${host}/system
            ./hosts/${host}/home
            /etc/nixos/hardware-configuration.nix
          ];
        };
      };
    };
}
