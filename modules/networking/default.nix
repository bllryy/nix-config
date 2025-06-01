{ config, lib, pkgs, ... }:

{
  networking = {
    networkmanager.enable = true;
    # wireless.enable = true;  # Alternative to networkmanager
  };
  
  # Firewall settings
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}