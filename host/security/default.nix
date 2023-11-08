_:

{
  # Use doas instead-of sudo
  security = {
    sudo.enable = false;
    doas = {
      enable = true;
      wheelNeedsPassword = true;
      extraRules = [
        {
          users = ["bruhabruh"];
          keepEnv = true;
          persist = true;
        }
      ];
    };
  };
}