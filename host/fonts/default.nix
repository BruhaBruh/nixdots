{
  pkgs,
  ...
}:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      sf-mono-liga-bin
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = ["Times, Noto Serif"];
        sansSerif = ["Helvetica Neue LT Std, Helvetica, Noto Sans"];
        monospace = ["Courier Prime, Courier, Noto Sans Mono"];
      };
    };
  };
}