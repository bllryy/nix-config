{ config, lib, pkgs, ... }:

{
  users.users.lily = {
    isNormalUser = true;
    description = "lily";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.bash;
  };

  # Common programs available to all users
  programs = {
    #firefox.enable = true;
  };



  # Services
  services = {
    flatpak.enable = true;
    printing.enable = false;  # Disabled as per your config
  };

  environment.systemPackages = with pkgs; [
    # Communication
    vesktop


	  # browser
	  librewolf

    # Tor Browser 
    tor-browser-bundle-bin
    
    # System libraries (consider if these are really needed system-wide)
    appimage-run
    flatpak
    
    # X11/GTK libraries from your original config
    xorg.libXxf86vm
    glib
    gtk3
    pango
    cairo
    atk
    gdk-pixbuf
    libGL
    freetype
    fontconfig
    dbus
    alsa-lib
  ];
}
