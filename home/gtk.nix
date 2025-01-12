{ pkgs, ... }: {
  gtk = {
    enable = true;
    cursorTheme = {
      package = pkgs.phinger-cursors;
      name = "phinger-cursors-dark";
      size = 14;
    };
    iconTheme = {
      package = pkgs.tela-icon-theme;
      name = "Tela";
    };
    theme = {
        package = pkgs.nightfox-gtk-theme;
        name = "Nightfox-Dark";
    };
  };
}
