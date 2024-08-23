{ pkgs, config, ... }: {
  services.swaync = { enable = true; };
  home = {
    file = {
      "${config.xdg.configHome}/swaync/icons" = {
        source = ./icons;
        recursive = true;
      };
      "${config.xdg.configHome}/swaync/images" = {
        source = ./images;
        recursive = true;
      };
      "${config.xdg.configHome}/swaync" = {
        source = ./config;
        recursive = true;
      };
    };
  };
}
