{ config, pkgs, lib, ... }:

{
  # Open ports in the firewall.
  networking.firewall.allowedTCPPortRanges = [
    { from = 1714; to = 1764; }
  ];
  networking.firewall.allowedUDPPortRanges = [
    { from = 1714; to = 1764; }
  ];
  networking.firewall.allowedTCPPorts = [
    22
    80
    443
    3000
    8000
  ];
  networking.firewall.allowedUDPPorts = [
    22
    80
    443
    3000
    8000
  ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}