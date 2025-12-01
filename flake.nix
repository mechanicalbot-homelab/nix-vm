{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ self, nixpkgs, disko, ... }: {
    nixosConfigurations.nix-deploy = nixpkgs.lib.nixosSystem {
      modules = [ ./hosts/nix-deploy ];
    };
    nixosConfigurations.nix-0 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ disko.nixosModules.disko ./hosts/nix-0 ];
    };
  };
}
