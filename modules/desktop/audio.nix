{ config, lib, pkgs, ... }:

let
  cfg = config.modules.desktop;
in {
  config = lib.mkIf cfg.enable {
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # jack.enable = true;  # Uncomment for JACK support
    };
  };
}