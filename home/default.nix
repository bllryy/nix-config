{ config, pkgs, ... }:

{
  imports = [
    # ./programs  # Uncomment when you create this directory
    # ./services  # Uncomment when you create this directory
  ];

  home = {
    username = "lily";
    homeDirectory = "/home/lily";
    stateVersion = "25.05";
  };

  # User-specific packages
  home.packages = with pkgs; [
    # NOT SYSTEMWIDE
  ];

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  programs = {
    git = {
      enable = true;
      userName = "lily";
      userEmail = "bllryy@proton.me";  
    };
    
    bash = {
      enable = true;
      bashrcExtra = ''
        # Add custom bash configuration here
      '';
    };
  };
}