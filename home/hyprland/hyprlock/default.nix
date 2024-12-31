{ pkgs, ... }: {
  programs.hyprlock = {
    enable = true;
    package = pkgs.hyprlock;
    settings = {
      general = { hide_cursor = true; };
      background = {
        # path = ../../../sources/images/dragon-profile.jpg;
        blur_size = 8;
        blur_passes = 8;
      };
    };
  };
}
