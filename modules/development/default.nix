{ config, lib, pkgs, ... }:

{
  imports = [
    ./languages.nix
    ./tools.nix
  ];

  options.modules.development = {
    enable = lib.mkEnableOption "development tools and languages";
  };
}