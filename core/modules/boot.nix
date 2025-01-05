{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "amdgpu "];
    # kernelParams = [ ];

    # initrd = {
    #   availableKernelModules =
    #     [ "xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod" ];
    #   kernelModules = [ ];
    # };

    supportedFilesystems = [ "ntfs" ];
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        enable = true;
        devices = [ "nodev" ];
        efiSupport = true;
        useOSProber = true;
        configurationLimit = 10;
      };
      timeout = 15;
    };
  };

}
