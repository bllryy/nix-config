{ config, lib, pkgs, ... }:

let
  cfg = config.modules.development;
in {
  config = lib.mkIf cfg.enable {
    programs = {
      git.enable = true;
      vim.defaultEditor = true;
    };

    environment.systemPackages = with pkgs; [
      # Development tools
      vscode
      emacs
      git
      wget
      curl
      jetbrains.idea-ultimate
      jetbrains.rust-rover

      
      # System utilities
      hyfetch
      neofetch
      fastfetch
    ];
  };
}
