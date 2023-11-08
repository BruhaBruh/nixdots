_:

{
  # Configure keymap in X11
  services = {
    # Enable CUPS to print documents.
    # printing.enable = true;
    xserver = {
      # Enable the X11 windowing system.
      enable = true;
      displayManager = {
        gdm.enable = true;
      };
      desktopManager = {
        # xfce.enable = true;
        gnome.enable = true;
        # mate.enable = true;
      };
      windowManager = {
        # i3.enable = true;
        awesome.enable = true;
        # bspwm.enable = true;
      };
      videoDrivers = ["nvidia"];
      layout = "us,ru";
      xkbVariant = "";
      libinput = {
        enable = true;
        mouse = {
          accelProfile = "flat";
        };
        touchpad = {
          accelProfile = "flat";
        };
      };
    };
    logmein-hamachi.enable = false;
    flatpak.enable = false;
  };
  
  # Configure console keymap
  console.keyMap = "us";
}