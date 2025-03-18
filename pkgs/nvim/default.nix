# packages/nvim/default.nix
{ nixvim, system }:

let
  nixvimLib = nixvim.lib.${system};
  nixvim' = nixvim.legacyPackages.${system};
  nixvimModule = {
    inherit system;
    module = import ./config;  # Refers to packages/nvim/config
    extraSpecialArgs = {};
  };
in
{
  package = nixvim'.makeNixvimWithModule nixvimModule;
  check = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
}
