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

  outputs = { nixpkgs, home-manager, ... } @inputs:
    let
      system = "x86_64-linux";
      host = "mercury";
      username = "cypher";
    in
    {
      nixosConfigurations = {
        ${host} = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system host username;
          };
          modules = [
            ./hosts/${host}/system
            ./hosts/${host}/users
            /etc/nixos/hardware-configuration.nix
          ];
        };
      };
    };
}
