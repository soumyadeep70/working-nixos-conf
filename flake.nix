{
  description = "HyprOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/master";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... } @inputs:
    let
      host = "mercury";
      username = "cypher";
    in
    {
      nixosConfigurations = {
        ${host} = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs;
            inherit host;
            inherit username;
          };
          modules = [
            ./hosts/${host}/system
            ./hosts/${host}/users
            ./hosts/${host}/hardware-configuration.nix
          ];
        };
      };
    };
}
