{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware.nix
    ../common.nix
    
    # System modules
    ../../modules
  ];

  # Host-specific settings
  networking.hostName = "nix-uwu";
  time.timeZone = "America/New_York";
  
  # Enable specific features for this host
  modules = {
    desktop.enable = true;
    development.enable = true;
    gaming.enable = true;
  };

  system.stateVersion = "25.05";
}