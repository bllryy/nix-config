{ config, lib, pkgs, ... }:

let
  cfg = config.modules.gaming;
in {
  options.modules.gaming = {
    enable = lib.mkEnableOption "gaming support";
  };

  config = lib.mkIf cfg.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
    };

    environment.systemPackages = with pkgs; [
      prismlauncher
      # Add more gaming packages
    ];

    # 32-bit support for games
    hardware.opengl.driSupport32Bit = true;
  };
}