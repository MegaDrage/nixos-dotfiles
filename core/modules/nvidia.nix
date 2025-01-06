{ lib, config, ... }: {
  services.xserver.videoDrivers = [ "nvidia" ];
  environment = {
    variables = {
      LIBVA_DRIVER_NAME = "nvidia";
      XDG_SESSION_TYPE = "wayland";
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      __GL_GSYNC_ALLOWED = "1";
      __GL_VRR_ALLOWED = "0";
      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      CUDA_CACHE_PATH = "$XDG_CACHE_HOME/nv";
    };
  };

  hardware = {

    # amdgpu.initrd.enable = false;

    nvidia = {
      nvidiaPersistenced = lib.mkDefault true;
      modesetting.enable = lib.mkDefault true;

      nvidiaSettings = lib.mkDefault true;

      powerManagement.enable = lib.mkDefault true;

      open = false;

      package = config.boot.kernelPackages.nvidiaPackages.stable;

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
