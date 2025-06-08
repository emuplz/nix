{ inputs, config, lib, pkgs, ... }:

pkgs.emacsWithPackagesFromUsePackage {
  package = (pkgs.emacs30.overrideAttrs (old: {
    configureFlags = old.configureFlags ++ [
      "--with-natural-title-bar"
    ];
    patches = [
      "${inputs.emacs-plus}/patches/emacs-30/fix-window-role.patch"
      "${inputs.emacs-plus}/patches/emacs-30/round-undecorated-frame.patch"
      "${inputs.emacs-plus}/patches/emacs-30/system-appearance.patch"
    ];
  }));
  config = ./init.org;
  defaultInitFile = true;
  alwaysTangle = true;
  extraEmacsPackages = epkgs: with epkgs; [
    treesit-grammars.with-all-grammars
  ];
}
