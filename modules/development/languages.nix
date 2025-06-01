{ config, lib, pkgs, ... }:

let
  cfg = config.modules.development;
in {
  config = lib.mkIf cfg.enable {
    programs.java = {
      enable = true;
      package = pkgs.jdk21.override { enableJavaFX = true; };
    };

    environment.systemPackages = with pkgs; [
      # Languages
      python3
      rustc
      cargo
      nodejs
      openjdk
      # Add more languages as needed
    ];
  };
}