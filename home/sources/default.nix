{ config, ... }: {

  home.file."${config.xdg.configHome}/sources" = {
    source = ../../sources;
    recursive = true;
  };
}
