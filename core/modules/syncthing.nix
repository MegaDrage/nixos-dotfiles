{
  services = {
    syncthing = {
      enable = true;
      user = "megadrage";
      dataDir = "$HOME/Documents";
      configDir = "/home/megadrage/.config/syncthing";
      overrideDevices = true;
      overrideFolders = true;
      guiAddress = "0.0.0.0:8384";
      settings = {
        devices = {
          "device1" = {
            id =
              "KOX2HLQ-A5HCQGN-TT6M2JS-HRHLFHJ-DWO57II-YZ7HHAS-KBKFYGV-EPEQGQ4";
          };
        };
        folders = {
          "GTD" = {
            path = "/home/megadrage/Documents/GTD/";
            devices = [ "device1" ];
            versioning = {
              type = "simple";
              params = { keep = "3"; };
            };
          };
        };
        gui = {
          user = "megadrage";
          password = "1234";
        };
      };
    };
  };
}
