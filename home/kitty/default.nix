{
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    themeFile = "tokyo_night_moon";
    settings = {
      font_size = "14.0";
      disable_ligatures = "cursos";
      shell_integration = "enabled";
      scrollback_lines = "2000";

      remember_window_size = "yes";

      sync_to_monitor = "yes";
    };
  };
}
