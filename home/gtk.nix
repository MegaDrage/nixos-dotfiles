{ pkgs, ... }: {
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };
    theme = {
      package = pkgs.gnome.gnome-themes-extra;
      name = "Adwaita";
    };
  };
}
