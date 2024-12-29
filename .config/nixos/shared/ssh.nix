# To use this shared NixOS configuration for OpenSSH, just import this file
# on your NixOS configuration.

{...}:

{
  programs.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "prohibit-password";
    };
  };

  programs.mosh.enable = true;
}