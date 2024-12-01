{
  bridges = { cbr0.interfaces = [ ]; };

  interface = {
    cbr0 = {
      ipAdress = "10.10.0.1";
      prefixLength = 24;
    };
  };
  services.kubernetes.roles = [ "master" "node" ];
}
