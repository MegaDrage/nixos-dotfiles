{ pkgs, ... }: {

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.megadrage = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
      "video"
      "input"
      "networkmanager"
      "rfkill"
      "audio"
      "network"
    ];
    packages = with pkgs; [ floorp ];
  };
  # Define a home-manager xdg settings
  home-manager.users.megadrage.xdg = {
    mimeApps.enable = true;
    userDirs = {
      enable = true;
      createDirectories = true;
      documents = "$HOME/documents";
      download = "$HOME/Downloads";
      music = "$HOME/Music";
      pictures = "$HOME/Pictures";
      videos = "$HOME/Videos";
      desktop = "$HOME/Desktop";
      publicShare = "$HOME/Public";
      templates = "$HOME/Templates";
      extraConfig = { XDG_DEV_DIR = "$HOME/Development"; };
    };
  };
}
