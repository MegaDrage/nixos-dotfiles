{ config, ... }:
{
  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
      extraConfig = {XDG_DEVELOPMENT_DIR = "${config.home.homeDirectory}/Development";};
    };
  };
}
