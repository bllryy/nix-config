{ config, lib, pkgs, ... }:

{
  imports = [
    ./boot
    ./networking  
    ./desktop
    ./development
    ./gaming
    ./users
  ];
}