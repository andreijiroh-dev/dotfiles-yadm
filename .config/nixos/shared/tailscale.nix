# This Nix file contains the Tailscale configuration here
# in NixOS, mostly on the side of the daemon and its related
# configurations.

{ ... }:

{
  services.tailscale = {
    enable = true;
    useRoutingFeatures = true;
    openFirewall = true;
    disableTaildrop = false;
    extraDaemonFlags = [
      "--verbose 3"
    ];
  };
}