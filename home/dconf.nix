{ pkgs, ... }: {
  dconf = {
    settings = {
      "org/gnome/desktop/interface" = {
        monospace-font-name = "JetBrainsMonoNL Nerd Font Mono 14";
        font-name = "Inter Medium 11";
        document-font-name = "Inter 11";
        text-scaling-factor = 1.1;
        font-hinting = "none";
        font-antialising = "rgba";
      };
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions =
          [ "user-theme@gnome-shell-extensions.gcampax.github.com" ];
      };
      "org/gnome/shell/extensions/user-theme" = { name = "Nightfox-Dark"; };
      "org/gnome/settings-daemon/plugins/power" = {
        idle-dim = false;
        idle-delay = 0;
        sleep-inactive-ac-type = "nothing";
        sleep-inactive-battery-type = "nothing";
      };
    };
  };
  home.packages = with pkgs; [ gnomeExtensions.user-themes gnome-themes-extra gtk-engine-murrine ];
}
