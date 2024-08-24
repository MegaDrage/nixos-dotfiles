{
  wayland.windowManager.hyprland.settings = {
    monitor = [ ",preferred,auto,1" ];
    windowrule = [ "float, pavucontrol" ];
    env = [
      "NIXOS_OZONE_WL, 1"
      "NIXPKGS_ALLOW_UNFREE, 1"
      "XDG_CURRENT_DESKTOP, Hyprland"
      "XDG_SESSION_TYPE, wayland"
      "XDG_SESSION_DESKTOP, Hyprland"
      "GDK_BACKEND, wayland, x11"
      "CLUTTER_BACKEND, wayland"
      "QT_QPA_PLATFORM=wayland;xcb"
      "QT_WAYLAND_DISABLE_WINDOWDECORATION, 1"
      "QT_AUTO_SCREEN_SCALE_FACTOR, 1"
      "SDL_VIDEODRIVER, x11"
      "MOZ_ENABLE_WAYLAND, 1"
    ];

    exec-once = [
      "polkit-agent-helper-1 &"
      "systemctl start --user polkit-gnome-authentication-agent-1 &"
      "killall -q waybar;sleep .5 && waybar &"
      "killall -q swaync;sleep .5 && swaync &"
      #"hypridle &"
      # "nm-applet --indicator"
    ];

    general = {
      "$mainMod" = "SUPER";
      gaps_in = 7;
      gaps_out = 7;
      border_size = 1;
      allow_tearing = true;
      resize_on_border = true;
    };
    decoration = {
      rounding = 16;
      blur = {
        enabled = true;
        brightness = 1.0;
        contrast = 1.0;
        noise = 1.0e-2;

        vibrancy = 0.2;
        vibrancy_darkness = 0.5;

        passes = 4;
        size = 7;

        popups = true;
        popups_ignorealpha = 0.2;
      };

      drop_shadow = true;
      shadow_ignore_window = true;
      shadow_offset = "0 15";
      shadow_range = 100;
      shadow_render_power = 2;
      shadow_scale = 0.97;
      "col.shadow" = "rgba(00000055)";
    };
    animations = {
      enabled = true;
      animation = [
        "border, 1, 2, default"
        "fade, 1, 4, default"
        "windows, 1, 3, default, popin 80%"
        "workspaces, 1, 2, default, slide"
      ];
    };

    input = {
      kb_layout = "us,ru";
      touchpad = { natural_scroll = true; };
      follow_mouse = 1;
      kb_options = "grp:alt_shift_toggle";
    };
    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    misc = {
      disable_autoreload = true;
      always_follow_on_dnd = true;
      layers_hog_keyboard_focus = true;
      animate_manual_resizes = false;
      enable_swallow = true;
      focus_on_activate = true;
      force_default_wallpaper = 0;
      animate_mouse_windowdragging = false;
      vrr = 1;
    };

    xwayland.force_zero_scaling = true;
    debug.disable_logs = false;
    binde = [
      # Laptop brigthness
      ", xf86MonBrightnessDown, exec, brightness-control --dec"
      ", xf86MonBrightnessUp, exec, brightness-control --inc"
    ];

    bindm = [
      # Mouse movements
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
      "$mainMod ALT, mouse:272, resizewindow"
    ];
    bind = [
      # "$mainMod SHIFT, L, exec, hyprlock"
      "$mainMod, Q, killactive,"
      "$mainMod, Return, exec, kitty"
      "$mainMod, B, exec, floorp"
      # Window control

      "$mainMod SHIFT, left, movewindow, l"
      "$mainMod SHIFT, right, movewindow, r"
      "$mainMod SHIFT, up, movewindow, u"
      "$mainMod SHIFT, down, movewindow, d"
      "$mainMod CTRL, left, resizeactive, -80 0"
      "$mainMod CTRL, right, resizeactive, 80 0"
      "$mainMod CTRL, up, resizeactive, 0 -80"
      "$mainMod CTRL, down, resizeactive, 0 80"
      "$mainMod ALT, left, moveactive,  -80 0"
      "$mainMod ALT, right, moveactive, 80 0"
      "$mainMod ALT, up, moveactive, 0 -80"
      "$mainMod ALT, down, moveactive, 0 80"
      # Workspace control
      "$mainMod SHIFT,F,togglefloating"
      "$mainMod,1,workspace,1"
      "$mainMod,2,workspace,2"
      "$mainMod,3,workspace,3"
      "$mainMod,4,workspace,4"
      "$mainMod,5,workspace,5"
      "$mainMod,6,workspace,6"
      "$mainMod,7,workspace,7"
      "$mainMod,8,workspace,8"
      "$mainMod,9,workspace,9"
      "$mainMod,0,workspace,10"
      "$mainMod, mouse_down, workspace, e-1"
      "$mainMod, mouse_up, workspace, e+1"
      # Move to Workspace
      "$mainMod SHIFT,1,movetoworkspace,1"
      "$mainMod SHIFT,2,movetoworkspace,2"
      "$mainMod SHIFT,3,movetoworkspace,3"
      "$mainMod SHIFT,4,movetoworkspace,4"
      "$mainMod SHIFT,5,movetoworkspace,5"
      "$mainMod SHIFT,6,movetoworkspace,6"
      "$mainMod SHIFT,7,movetoworkspace,7"
      "$mainMod SHIFT,8,movetoworkspace,8"
      "$mainMod SHIFT,9,movetoworkspace,9"
      "$mainMod SHIFT,0,movetoworkspace,10"
      # Screenshot a window
      "$mainMod, PRINT, exec, hyprshot -m window"
      # Screenshot a monitor
      ", PRINT, exec, hyprshot -m output"
      # Screenshot a region
      "$mainMod SHIFT, PRINT, exec, hyprshot -m region"
      ", xf86TouchpadOn, exec, touchpad-control #disable touchpad"
      ", xf86TouchpadOff, exec, touchpad-control #enable touchpad"
    ];
    bindel = [
      # Sound 
      ", xf86audioraisevolume, exec, volume-control --inc #volume up"
      ", xf86audiolowervolume, exec, volume-control --dec #volume down"
    ];

    bindl = [
      ", xf86AudioMicMute, exec, volume-control --toggle-mic #mute mic"
      ", xf86audiomute, exec, volume-control --toggle"
      ", xf86Sleep, exec, systemctl suspend  # sleep button"
    ];
  };
}
