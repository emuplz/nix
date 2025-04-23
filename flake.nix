{
  description = "A nixvim configuration with shells";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, pkgs, ... }:
        let
          nvim = pkgs.callPackage ./pkgs/nvim { inherit nixvim system pkgs; };
        in
        {
          packages = {
            nvim = nvim.package;
          };
          checks = {
            default = nvim.check;  # Run with `nix flake check`
          };
          devShells = {
	    default = pkgs.mkShellNoCC {
	      buildInputs = [
			pkgs.ripgrep
			pkgs.fd
			nvim.package
			pkgs.git
			pkgs.binsider
	      ];
	    };
          };
        };
    };
}
