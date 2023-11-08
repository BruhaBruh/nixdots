{
  pkgs,
  config,
  lib,
  ...
}:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "bruhabruh";
    homeDirectory = "/home/bruhabruh";
    stateVersion = "23.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Imports
  imports = [
  ];

  # Overlays
  nixpkgs = {
    overlays = [
      (self: super: {
        discord = super.discord.overrideAttrs (
          _: {
            src = builtins.fetchTarball {
              url = "https://discord.com/api/download?platform=linux&format=tar.gz";
              # sha256 = "sha256:0000000000000000000000000000000000000000000000000000";
            };
          }
        );
      })
    ];
    config = {
      allowUnfreePredicate = pkg: true;
      packageOverrides = pkgs: {
        nur =
          import (builtins.fetchTarball {
            url = "https://github.com/nix-community/NUR/archive/master.tar.gz";
            # sha256 = "sha256:0000000000000000000000000000000000000000000000000000";
          })
          { inherit pkgs; };
      };
    };
  };

  fonts.fontconfig.enable = true;

  # Add support for .local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}