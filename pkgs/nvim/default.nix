# packages/nvim/default.nix
{ nixvim, system, inputs }:

let
  nixvimLib = nixvim.lib.${system};
  nixvim' = nixvim.legacyPackages.${system};
  nixvimModule = {
    inherit system;
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
