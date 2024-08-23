{ pkgs, ... }:
let
  mainMod = "SUPER";
  SECONDARY = "SHIFT";
  TERTIARY = "CTRL";
in {
  bindm = [
    # Mouse movements
    "${mainMod}, mouse:272, movewindow"
    "${mainMod}, mouse:273, resizewindow"
    "${mainMod} ALT, mouse:272, resizewindow"
  ];
  bind = [
    # "${mainMod} SHIFT, L, exec, hyprlock"
    "${mainMod}, Q, killactive,"
    "${mainMod}, Return, exec, kitty"
    "${mainMod}, B, exec, floorp"
  ];
}
