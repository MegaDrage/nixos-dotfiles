{
  imports = [ ./settings ./swaync ./waybar ./wlogout ./hypridle ./rofi ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
