# packages/nvim/default.nix
{ nixvim, system, pkgs }:

let
  nixvimLib = nixvim.lib.${system};
  nixvim' = nixvim.legacyPackages.${system};
  nixvimModule = {
    inherit pkgs;
    module = {
      imports = [ ./config ];
    };
    extraSpecialArgs = {};
  };
in
{
  package = nixvim'.makeNixvimWithModule nixvimModule;
  check = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
}
