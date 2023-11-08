{
  pkgs,
  ...
}:

{
  users.users.bruhabruh = {
    isNormalUser = true;
    description = "bruhabruh";
    initialPassword = "1111";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
      "input"
      "docker"
      "libvirtd"
    ];
  };
}