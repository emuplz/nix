{
  description = "A nixvim configuration with shells";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
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
          nvim = pkgs.callPackage ./pkgs/nvim { inherit nixvim system; };
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
			pkgs.binsider
	      ] ++ (if pkgs.lib.hasSuffix "-linux" system then [
            		pkgs.gef
              ] else []);
	  };
          };
        };
    };
}
