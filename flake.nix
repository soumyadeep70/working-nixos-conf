{
  description = "HyprOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
  };

  outputs = { nixpkgs, ... } @inputs:
    let
      system = "x86_64-linux";
      host = "mercury";
      username = "cypher";
    in
    {
      nixosConfigurations = {
        "${host}" = nixpkgs.lib.nixosSystem {
          specialArgs = {
	          inherit system;
            inherit inputs;
            inherit host;
            inherit username;
          };
          modules = [
            ./hosts/${host}/configuration.nix
          ];
        };
      };
    };
}

