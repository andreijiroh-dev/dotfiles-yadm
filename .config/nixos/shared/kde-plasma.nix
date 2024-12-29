{ config, pkgs, lib, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Also enable KDE Connect
  programs.kdeconnect.enable = true;
}