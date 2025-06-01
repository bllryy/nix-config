{ config, lib, pkgs, ... }:

let
  cfg = config.modules.desktop;
in {
  config = lib.mkIf cfg.enable {
    services.xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };

    # Exclude some default GNOME applications
    environment.gnome.excludePackages = with pkgs; [
      gnome-photos
      gnome-tour
      gnome-music
      epiphany # web browser
      geary # email reader
      evince # document viewer
      totem # video player
    ];
  };
}