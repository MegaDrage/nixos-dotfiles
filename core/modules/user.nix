{ pkgs, ... }: {

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.megadrage = {
    isNormalUser = true;
    extraGroups = [
      "vboxusers"
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
}
