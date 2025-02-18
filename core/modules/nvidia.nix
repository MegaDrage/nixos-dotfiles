{ lib, config, ... }: {
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware = {

    amdgpu.initrd.enable = false;

    nvidia = {
      nvidiaPersistenced = lib.mkDefault true;
      modesetting.enable = lib.mkDefault true;

      nvidiaSettings = lib.mkDefault true;

      powerManagement = {enable = lib.mkDefault true; finegrained = true;};

      open = true;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
      dynamicBoost.enable = true;

      prime = {
        offload = {
          enable = true;
          enableOffloadCmd = true;
        };
        amdgpuBusId = lib.mkDefault "PCI:5:0:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
  };
}
