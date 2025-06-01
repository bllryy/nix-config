{ config, lib, pkgs, ... }:

{
  imports = [
    ./gnome.nix
    ./audio.nix
  ];

  options.modules.desktop = {
    enable = lib.mkEnableOption "desktop environment";
  };
}