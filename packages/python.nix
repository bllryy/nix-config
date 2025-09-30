# packages.nix
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Python with packages
    (python3.withPackages (ps: with ps; [
      numpy requests flask
    ]))
  ];
}
