{
  services.logrotate = {
    enable = true;
    settings = {
      header = { dateext = true; };
      "$HOME/.local/share/nvim/*.log" = {
        frequency = "daily";
        rotate = 3;
      };
    };
  };
}
