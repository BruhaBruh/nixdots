{
  pkgs,
  inputs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    git
    curl
    playerctl
    inputs.xdg-portal-hyprland.packages.${system}.xdg-desktop-portal-hyprland
  ];
}