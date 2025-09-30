{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./packages/python.nix
      ./packages/packages.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.initrd.luks.devices."luks-292ab154-4c3a-45cc-aa0a-1fca1ec15a0d".device = "/dev/disk/by-uuid/292ab154-4c3a-45cc-aa0a-1fca1ec15a0d";
  networking.hostName = "nixos-uwu"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # KEEP FOR RESEDENTIAL
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  services.displayManager.ly.enable = true;
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
    windowManager.qtile.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lily = {
    isNormalUser = true;
    description = "lily";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };

  programs.firefox.enable = true;

  programs.nix-ld.enable = true;
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
     vim
     wget
     vesktop
     vscode
     gcc
     cargo
     python3
     aircrack-ng
     rustscan
     nmap 
     gobuster
     macchanger
     pavucontrol
     glab
     nodejs
     flameshot
     brightnessctl
     chromium
     htop
     libreoffice
     pcmanfm
     obs-studio
     go
     arandr
     fastfetch
     neovide
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05"; 

}
