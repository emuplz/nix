{
  description = "A simple Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    }; 
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations.lewisc = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ 
          ./home/common.nix
          {
            home.username = "lewisc";
            home.homeDirectory = "/Users/lewisc";
          }
        ];

        extraSpecialArgs = {
          inherit inputs system;
        };
      };
    };
}
