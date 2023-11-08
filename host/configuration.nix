{
  config,
  pkgs,
  final,
  prev,
  inputs,
  packages,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./bootloader
    ./systemd
    ./network
    ./i18n
    ./programs
    ./overlays
    ./virtualisation
    ./env
    ./hardware
    ./x11
    ./sound
    ./users
    ./security
    ./packages
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enables flakes + garbage collector
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";
    settings = {
      auto-optimise-store = true;
      substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  # Nix
  system.stateVersion = "23.05";
}
