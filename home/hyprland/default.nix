{
  imports = [ ./settings ./swaync ./waybar ./wlogout ./hypridle ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
